<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use App\Model\User;
use App\User;
use App\Model\Admin;
use DB;
use Illuminate\Support\Facades\Hash;
use Session;

class loginController extends Controller
{
    public function login(Request $request) {
    	$email = $request->email;
    	$passworda =$request->password;

	    $user = DB::table('users')->where('email', '=', $email)->first();
	    $password = DB::table('users')->where('email', $email)->value('password');
	    //$userid = DB::table('users')->where('email', $email)->value('id');
	    //$order = DB::table('users')->where('user_id', $userid)->value('order');
	    

	    if (!$user) {
	    	session(['success' => 'false']);
	    	return response()->json(['success'=>false, 'message' => 'Login Fail, please check email id'],500);
	    }
	    if (!Hash::check($passworda, $password)) {
	       	return response()->json(['success'=>false, 'message' => 'Login Fail, pls check password'],500);
	    }
	    	//$req->session()->put('data');
	    	return response()->json(['success'=>true,'message'=>'success', 'data' => $user],200);//, 'data' => $user
	}
	
	public function loginAdmin(Request $request) {
    	$email = $request->email;
    	$passworda =$request->password;

	    $user = DB::table('admins')->where('email', '=', $email)->first();
	    $password = DB::table('admins')->where('email', $email)->value('password');

	    if (!$user) {
	    	session(['success' => 'false']);
	    	return response()->json(['success'=>false, 'message' => 'Login Fail, please check email id'],500);
	    }
	    if (!Hash::check($passworda, $password)) {
	       	return response()->json(['success'=>false, 'message' => 'Login Fail, pls check password'],500);
	    }
	       	return response()->json(['success'=>true,'message'=>'success'],200);
    }
	
	public function usersignin(Request $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password);
        $user->save();
        return response()->json(['data'=>$user],200);
    }
}
