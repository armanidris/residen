<?php

namespace App\Http\Controllers;

use App\Models\MUserProfile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

class UserProfile extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($encid)
    {
        $iduser = Crypt::decryptString($encid);
        $data = MUserProfile::where('id',$iduser)->get();
        // dd($data->table);
        
        return view('adminpages.profile.main',['iduser' => $encid, 'data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function pass_main($encid)
    {
        $iduser = Crypt::decryptString($encid);
        $data = MUserProfile::where('id',$iduser)->get();
        // dd($data->table);
        
        return view('adminpages.profile.password',['iduser' => $encid, 'data' => $data]);
    }

    public function pass_update(Request $request, $encid)
    {
        if ($request->new_pass != $request->conf_pass) {
            return back()->with('ConfErr','Password tidak sama');
        } 
        $iduser = Crypt::decryptString($encid);
        $data = MUserProfile::where('id',$iduser)->get();
        
        if (Hash::check($request->old_password,$data[0]->password)) {
            $user = MUserProfile::find($iduser);
            $user->password = bcrypt($request->new_pass);
            $user->save();
        } else {
            return back()->with('PassErr','Password lama tidak sesuai');
        }

    }

    public function update_profile(Request $request, $encid)
    {
        
        $validatedData = $request->validate([
            'name' => 'required|max:80',
            'email' => 'required|email',
            'file_foto' => 'image|file|max:1024'
        ]);

        // dd($validatedData);

        if ($request->file('file_foto')) {
            $validatedData['file_foto'] = $request->file('file_foto')->store('photos');
        }

        $validatedData['id'] = Crypt::decryptString($encid);
        
        // $profile = MUserProfile::find($validatedData['id']);
        MUserProfile::where('id',$validatedData['id'])->update($validatedData);
        // Member::where('id', $id)->update($validated);
        
        // dd ($validatedData);
        return back();
        
        
    }


}
