<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HomepageSlider;
use App\Client;
use App\Team;
use App\Service;
use App\Subtitle;
use App\Project;
use App\Contact;

class PageController extends Controller
{
    public function index(){
        $images= HomepageSlider::all();
        $clients= Client::all();
        $projects= Project::all()->take(3);
        return view('index', compact('images', 'clients', 'projects'));
    }

    public function aboutUs(){
        $members= Team::all();
        $services= Service::all()->take(5);
        return view('team', compact('members', 'services'));
    }

    public function teamMember($id){
        $member= Team::where('id', $id)->first();
        return view('teamMember', compact('member'));
    }

    public function services(){
        $services= Service::all();
        return view('services', compact('services'));
    }

    public function service($id){
        $service= Service::where('id', $id)->first();
        $subtitles = Subtitle::where('service_id', $id)->get();
        $projects = Project::where('service_id', $id)->get();
        return view('service', compact('service', 'subtitles', 'projects'));
    }
    public function project($id){
        
        $subtitles = Subtitle::where('project_id', $id)->get();
        $project = Project::where('id', $id)->first();
        //return $project;
       return view('project', compact('subtitles', 'project'));
    }

    public function contact(Request $request){
        $contact= new Contact;
        $contact->name=$request->name;
        $contact->email=$request->email;
        $contact->message=$request->message;
        $contact->save();
        return back();
    }
}
