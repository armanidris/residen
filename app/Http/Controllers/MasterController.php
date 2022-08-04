<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class MasterController extends Controller
{
    public function stase_index()
    {  
        $data = DB::table('tempat_stase')->get();
        return view('adminpages.mstase.main',['data' => $data]);

    }

    public function stase_edit($id)
    {
        $data = DB::table('tempat_stase')->where('lokasi_id',$id)->get();
        return view('adminpages.mstase.edit', ['data'=>$data]);
    }

    public function stase_update(Request $request, $id)
    {
        $validated = $request->validate([
            'lokasi_stase' => 'required'
        ]);
        DB::table('tempat_stase')->where('lokasi_id',$request->lokasi_id)->update($validated);
        $request->session()->flash('success','Data berhasil diperbaharui ('.$request->lokasi_stase.')');
        return redirect('/mstase');

    }

    public function stase_create()
    {
        return view('adminpages.mstase.input');
    }

    public function stase_store(Request $request)
    {
        $validated = $request->validate([
            'lokasi_stase' => 'required'
        ]);
        DB::table('tempat_stase')->insert($validated);
        $request->session()->flash('success','Data '.$request->lokasi_stase.' berhasil diinput');
        return redirect('/mstase');
    }

    public function stase_destroy(Request $request, $id)
    {
        DB::table('tempat_stase')->where('lokasi_id',$id)->delete();
        $request->session()->flash('success','Data '.$request->lokasi_stase.' berhasil dihapus');
        return redirect('/mstase');
    }

    public function pembimbing_index()
    {
        $data = DB::table('pembimbing')->get();
        return view('adminpages.mpembimbing.main',['data'=>$data]);
    }

    public function pembimbing_create()
    {
        return view('adminpages.mpembimbing.input');
    }

    public function pembimbing_store(Request $request)
    {
        $validated = $request->validate([
            'nama_pembimbing' => 'required',
            'nip' => ''
        ]);
        DB::table('pembimbing')->insert($validated);
        $request->session()->flash('success','Data '.$request->nama_pembimbing.' berhasil diinput');
        return redirect('/mpembimbing');

    }

    public function pembimbing_edit($id)
    {
        $data = DB::table('pembimbing')->where('id',$id)->get();
        return view('adminpages.mpembimbing.edit',['data'=>$data]);

    }
    public function pembimbing_update(Request $request)
    {
        $validated = $request->validate([
            'nama_pembimbing' => 'required',
            'nip' => ''
        ]);
        DB::table('pembimbing')->where('id',$request->id)->update($validated);
        $request->session()->flash('success','Data '.$request->nama_pembimbing.' berhasil diperbaharui');
        return redirect('/mpembimbing');      
    }

    public function pembimbing_destroy(Request $request, $id)
    {
        DB::table('pembimbing')->where('id',$id)->delete();
        $request->session()->flash('success','Data '.$request->nama_pembimbing.' berhasil dihapus');
        return redirect('/mpembimbing');
    }

}
