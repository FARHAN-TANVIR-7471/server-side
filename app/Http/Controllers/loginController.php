<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\User;
use DB;
use Illuminate\Support\Facades\Hash;
use Session;

class loginController extends Controller
{

    public function login(Request $request) {
    	$email = $request->email;
    	$passworda =$request->password;

        /*return response([
            'data' => $passworda
        ],201);*/

	    $user = DB::table('users')->where('email', '=', $email)->first();
	    $password = DB::table('users')->where('email', $email)->value('password');

	    if (!$user) {
	    	session(['success' => 'false']);
	    	return response()->json(['success'=>false, 'message' => 'Login Fail, please check email id'],500);
	    }
	    if (!Hash::check($passworda, $password)) {
	       	return response()->json(['success'=>false, 'message' => 'Login Fail, pls check password'],500);
	    }
	       	return response()->json(['success'=>true,'message'=>'success'],200);//, 'data' => $user

        
    	//print_r($request->input(''));
    }
}
