<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Designation;
use App\Models\Gallery;
use App\Models\GalleryContent;
use App\Models\NewsNotice;
use App\Models\Page;
use App\Models\Slider;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class SiteController extends Controller
{
    public $newsNotices;

    public function __construct()
    {
        $this->newsNotices = NewsNotice::where('status', 'published')
            ->orderBy('created_at', 'desc')
            ->take(30)
            ->get();
    }
    /**
     * Load home page data
     */
    public function home(Request $request){

        $page = Page::with('slider')->where('slug', 'home')
            ->where('status', 'published')
            ->first();

        $principal = Designation::where('name', 'Principal')
            ->with('user')
            ->first();

        $slider = Slider::where('shortcode', 'hero')
            ->where('status', 'active')
            ->with(['contents' => function($query){
                $query->orderBy('order', 'asc')->where('status', 'active')->get();
            }])
            ->first();


        $newsNotices = $this->newsNotices;
        return view(theme('pages.home'), compact('newsNotices', 'page', 'principal', 'principal','slider'));
    }

    /**
     * load dynamic pages
     */
    public function page($slug=null){
        $page = Page::with('slider')->where('slug',$slug)->first();
        $newsNotices = $this->newsNotices;
        return view(theme('pages.page'), compact('page','newsNotices'));
    }

    /**
     * Load login page
     */
    public function login(){
        return view(theme('pages.auth.login'));
    }

    /**
     * User register page
     */
    public function register(){
        return view(theme('pages.auth.register'));
    }

    /**
     * Set localization
     */
    public function lang($lang){
        if(in_array($lang, ['en','bn'])){
            session(['locale' => $lang]);
            app()->setLocale($lang);
        }
        return redirect()->back();
    }

    /**
     * Contact us page
     */
    public function contact(){
        return view(theme('pages.contact'));
    }

    public function quill(Request $request)
    {
        $path = $request->file('image')->store('quill', 'public');
        return response()->json([
            'url' => asset('storage/' . $path)
        ]);
    }

    public function quillUpload(Request $request){
        $request->validate([
            'image' => 'required|image|max:4096'
        ]);

        $path = $request->file('image')->store('quill', 'public');

        return response()->json([
            'url' => asset('storage/' . $path)
        ]);
    }

    public function role($name){
        Role::create(['name' => $name]);
    }

    public function permission($permission){
        Permission::create([
            'name' => $permission,
        ]);
    }

    /**
     * Show administrative persons
     */
    public function administrative($role){
        $persons = User::where('role', $role)->whereHas('profile')->paginate(10,['*'],'page');
        return view(theme('pages.administrative'), compact('persons', 'role'));
    }

    /**
     * Show gallery details
     */
    public function gallery($type='gallery',$id=null){
        $gallery = null;
        if($id){
            $gallery = Gallery::with('contents')->find($id);
            $contents = GalleryContent::where('gallery_id', $gallery->id)->paginate(12);
            return view(theme('pages.media-view'), compact('gallery', 'contents'));
        }
        $galleries = Gallery::where('status', 'Public')->paginate(10);
        return view(theme('pages.media'), compact('galleries'));
    }
}
