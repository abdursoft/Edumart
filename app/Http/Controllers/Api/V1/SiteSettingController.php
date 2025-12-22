<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SiteSettingController extends Controller
{
    /**
     * Display current site settings
     */
    public function index()
    {
        $site = SiteSetting::first();
        return view(backend('pages.site-info'), compact('site'));
    }

    /**
     * Store or update site settings
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'site_name'      => 'nullable|string|max:255',
            'logo'           => 'nullable|file|mimes:png,jpg,jpeg,webp',
            'favicon'        => 'nullable|file|mimes:png,jpg,jpeg,ico',
            'theme'          => 'nullable|string|max:255',
            'contact_email'  => 'nullable|email',
            'contact_phone'  => 'nullable|string|max:50',
            'address'        => 'nullable|string|max:255',
            'post'           => 'nullable|string|max:100',
            'division_id'    => 'nullable|exists:divisions,id',
            'district_id'    => 'nullable|exists:districts,id',
            'thana_id'       => 'nullable|exists:thanas,id',
            'union_id'       => 'nullable|exists:unions,id',
            'code'           => 'nullable|string',
            'gov_id'         => 'nullable|string',
            'name_bn'        => 'nullable|string',
            'establish_date' => 'nullable|date',
            'social_links'   => 'nullable|array',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors());
        }

        $settings = SiteSetting::firstOrNew([]);

        // Upload logo
        if ($request->hasFile('logo')) {
            $settings->logo = $request->file('logo')->store('site', 'public');
        }

        // Upload favicon
        if ($request->hasFile('favicon')) {
            $settings->favicon = $request->file('favicon')->store('site', 'public');
        }

        $settings->site_name      = $request->site_name;
        $settings->theme          = $request->theme ?? 'default';
        $settings->contact_email  = $request->contact_email;
        $settings->contact_phone  = $request->contact_phone;
        $settings->address        = $request->address;
        $settings->post           = $request->post;
        $settings->division_id    = $request->division_id;
        $settings->district_id    = $request->district_id;
        $settings->thana_id       = $request->thana_id;
        $settings->union_id       = $request->union_id;
        $settings->code           = $request->code;
        $settings->gov_id         = $request->gov_id;
        $settings->name_bn        = $request->name_bn;
        $settings->establish_date = $request->establish_date;

        if ($request->social_links) {
            $settings->social_links = $request->social_links;
        }

        $settings->save();

        return redirect()->back()->with('success', 'Site Information updated successfully.');
    }
}
