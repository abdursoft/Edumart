<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\NewsNotice;
use Illuminate\Http\Request;

class NewsNoticeController extends Controller
{
    // List all news and notices
    public function index(Request $request)
    {
        $type = $request->route()->getName();
        $event = renderEvent($type);
  
        $notices = NewsNotice::with('creator')
            ->where('type', $event)
            ->orderBy('publish_date', 'desc')
            ->orderBy('created_at', 'desc')
            ->get();

        $notice = null;
        $event = getEvent($event);
        return view(backend('pages.'.str_replace('_','-',$event)), compact('notices', 'notice'));
    }

    // Store a new notice or news
    public function store(Request $request)
    {
        $request->validate([
            'title'        => 'required|string',
            'description'  => 'nullable|string',
            'type'         => 'required|in:news,notice,event',
            'publish_date' => 'nullable|date',
            'attachment'   => 'nullable|string',
            'status'       => 'required|in:draft,published',
            'created_by'   => 'nullable|exists:users,id',
        ]);

        NewsNotice::create($request->all());

        return redirect()->back()->with('success', 'Data created successfully');
    }

    // Show a single news or notice
    public function show($id)
    {

        $notice = NewsNotice::findOrFail($id);
        $notices = NewsNotice::with('creator')
            ->where('type', $notice->type)
            ->orderBy('publish_date', 'desc')
            ->orderBy('created_at', 'desc')
            ->get();
        $event = getEvent($notice->type);
        return view(backend('pages.'.str_replace('_','-',$event)), compact('notices', 'notice'));
    }

    // Update a news or notice
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'        => 'sometimes|required|string',
            'description'  => 'nullable|string',
            'type'         => 'nullable|in:news,notice,event',
            'publish_date' => 'nullable|date',
            'attachment'   => 'nullable|string',
            'status'       => 'nullable|in:draft,published',
            'created_by'   => 'nullable|exists:users,id',
        ]);
        $newsNotice = NewsNotice::findOrFail($id);
        $newsNotice->update($request->all());
        $event = getEvent($newsNotice->type);
        $url = route('admin.information.'.$event).'?type='.$newsNotice->type;
        return redirect($url)->with('success', 'Data updated successfully');
    }

    // Delete a news or notice
    public function destroy($id)
    {
        $newsNotice = NewsNotice::findOrFail($id);
        if(!$newsNotice){
            return redirect()->route('admin.information.notice_board')->with('error', 'Targeted ID couldn\'t found');
        }
        $event = getEvent($newsNotice->type);
        $newsNotice->delete();
        $url = route('admin.information.'.$event).'?type='.$newsNotice->type;
        return redirect($url)->with('success', 'Targeted deleted successfully');
    }
}
