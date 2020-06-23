<?php
namespace App\Http\Controllers;

use App\Model\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        $contact = Contact::orderBy('updated_at', 'DESC')->get();
        return response()->json(['data'=>$contact],200);
    }

    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        $contact = new Contact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;

        $contact->save();
        return response()->json(['data'=>$contact],200);
    }

    public function show(Contact $contact)
    {
        //
    }


    public function edit(Contact $contact)
    {
        //
    }

    public function update(Request $request, Contact $contact)
    {
        //
    }

    public function destroy(Contact $contact)
    {
        //
    }
}
