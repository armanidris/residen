<?php

namespace App\Http\Controllers;

use App\Models\ResidenModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;

class ResidenController extends Controller
{
    public function index(Request $request)
    {
        $request->session()->forget('res_id');
        $request->session()->forget('res_name');
        $res = ResidenModel::all();
        return view('adminpages.residen.main',['data'=>$res]);
    }

    public function show(Request $request, $id)
    {
        $request->session()->put('res_id',$id);
        
        $id = Crypt::decryptString($id);
        $res = ResidenModel::where('res_id',$id)->get();
        $request->session()->put('res_name',$res[0]->res_name);
        
        $makalah = DB::table('makalah')
                    ->leftjoin('pembimbing','makalah.pembimbing','=','pembimbing.id')
                    ->where('res_id',$id)->get();
        $ujian = DB::table('ujian')->where('res_id',$id)->get();
        $kursus = DB::table('kursus')->where('res_id',$id)->get();
        $stase = DB::table('stase')
                ->join('tempat_stase','stase.lokasi_id','=','tempat_stase.lokasi_id')
                ->where('res_id',$id)->get();
        // ddd($res);
         return view('adminpages.residen.detail',['res'=>$res,'makalah'=>$makalah,'kursus'=>$kursus,'stase'=>$stase,'ujian'=>$ujian]);
    }


    public function makalah_create($id)
    {
        $makalah = DB::table('makalah')
                    ->leftjoin('pembimbing','makalah.pembimbing','=','pembimbing.id')
                    ->where('res_id',$id)->get();
        $pembimbing = DB::table('pembimbing')->get();
        return view('adminpages.residen.makalah_create',['id',$id,'vmakalah'=>$makalah,'pembimbing'=>$pembimbing]);

    }

    public function makalah_store(Request $request)
    {
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['tanggal_baca']=date("Y-m-d",strtotime($request->tanggal_baca));
        unset($data['_token']);
        DB::table('makalah')->insert($data);
        return back();
    }

    public function makalah_edit($id,$mid)
    {
        $makalah = DB::table('makalah')
                    ->leftjoin('pembimbing','makalah.pembimbing','=','pembimbing.id')
                    ->where('res_id',$id)->get();
        $pembimbing = DB::table('pembimbing')->get();
        $detmakalah = DB::table('makalah')
                    ->leftjoin('pembimbing','makalah.pembimbing','=','pembimbing.id')
                    ->where('res_id',$id)
                    ->where('makalah_id',$mid)
                    ->get();
        
        return view('adminpages.residen.makalah_edit',['id',$id,'vmakalah'=>$makalah,'pembimbing'=>$pembimbing,'detmakalah'=>$detmakalah]);

    }

    public function makalah_update(Request $request,$id,$mid)
    {

        $data = $request->all();
        $Validated = $request->validate([
            'makalah_type' => 'required',
            'judul' => 'required',
            'tanggal_baca' => 'required_if:status,1'
        ]);
        $data['res_id']=Crypt::decryptString($request->res_id);
        unset($data['_token']);
        if (!key_exists('status',$data)) {
            $data['status'] = 0;
            $data['tanggal_baca']="1970-01-01";
        } else {
            $data['tanggal_baca']=date("Y-m-d",strtotime($request->tanggal_baca));
        }
        if (!key_exists('bap_makalah',$data)) {
            $data['bap_makalah'] = 0;
        }
        //sdd($data);
        DB::table('makalah')->where('makalah_id',$mid)->update($data);
        return back();
    }
    
    public function kursus_create($id)
    {
        $data = DB::table('kursus')->where('res_id',$id)->get();
        return view('adminpages.residen.kursus_create',['id',$id,'vkursus'=>$data]);

    }

    public function kursus_store(Request $request)
    {
        $Validated = $request->validate([
            'kursus_name' => 'required',
            'tempat' => 'required',
            'start' => 'required'
        ]);

        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['start']=date("Y-m-d",strtotime($request->start));
        if (isset($request->end)) {
            $data['end']=date("Y-m-d",strtotime($request->end));
        }
        unset($data['_token']);
        // dd($data);
        DB::table('kursus')->insert($data);
        return back();
    }

    public function kursus_edit($id,$kid)
    {
        $data = DB::table('kursus')->where('res_id',$id)->get();
        $detail = DB::table('kursus')->where('kursus_id',$kid)->where('res_id',$id)->get();
        return view('adminpages.residen.kursus_edit',['id'=>$id,'vkursus'=>$data,'kdet'=>$detail]);

    }

    public function kursus_update(Request $request)
    {
        $Validated = $request->validate([
            'kursus_name' => 'required',
            'tempat' => 'required',
            'start' => 'required'
        ]);
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['start']=date("Y-m-d",strtotime($request->start));
        if (isset($request->end)) {
            $data['end']=date("Y-m-d",strtotime($request->end));
        }
        unset($data['_token']);
        // dd($data);
        DB::table('kursus')->where('kursus_id',$request->kursus_id)->update($data);
        return back();
        // dd($request->all());
    }

    public function makalah_destroy(Request $request)
    {
        dd($request->all());
    }
   
    public function ujian_create($id)
    {
        $data = DB::table('ujian')->where('res_id',$id)->get();
        return view('adminpages.residen.ujian_create',['id',$id,'vujian'=>$data]);

    }

    public function ujian_store(Request $request)
    {
        $Validated = $request->validate([
            'ujian_name' => 'required',
            'tempat' => 'required',
            'tanggal' => 'required'
        ]);
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['tanggal']=date("Y-m-d",strtotime($request->tanggal));
        unset($data['_token']);
        DB::table('ujian')->insert($data);
        return back();
    }

    public function ujian_edit($id,$ujid)
    {
        $data = DB::table('ujian')->where('res_id',$id)->get();
        $detail = DB::table('ujian')->where('ujian_id',$ujid)->where('res_id',$id)->get();
        return view('adminpages.residen.ujian_edit',['id'=>$id,'vujian'=>$data,'ujdet'=>$detail]);
    }

    public function ujian_update(Request $request)
    {
        $Validated = $request->validate([
            'ujian_name' => 'required',
            'tempat' => 'required',
            'tanggal' => 'required'
        ]);
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['tanggal']=date("Y-m-d",strtotime($request->tanggal));
        unset($data['_token']);
        DB::table('ujian')->where('ujian_id',$request->ujian_id)->update($data);
        return back();
    }

    public function stase_create($id)
    {
        $data = DB::table('stase')
                ->leftJoin('tempat_stase','stase.lokasi_id','=','tempat_stase.lokasi_id')
                ->where('res_id',$id)->get();
        $tempat_stase = DB::table('tempat_stase')->get();
        return view('adminpages.residen.stase_create',['id',$id,'vstase'=>$data,'tempat_stase'=>$tempat_stase]);

    }

    public function stase_store(Request $request)
    {
        $Validated = $request->validate([
            'lokasi_id' => 'required',
            'mulai' => 'required',
            'selesai' => 'required'
        ]);

        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['mulai']=date("Y-m-d",strtotime($request->mulai));
        if (isset($request->selesai)) {
            $data['selesai']=date("Y-m-d",strtotime($request->selesai));
        }
        unset($data['_token']);
        DB::table('stase')->insert($data);
        $request->session()->flash('success','Data stase berhasil diinput');
        return back();
    }

    public function stase_edit($id, $sid)
    {
        $data = DB::table('stase')
                ->leftJoin('tempat_stase','stase.lokasi_id','=','tempat_stase.lokasi_id')
                ->where('res_id',$id)->get();
        $tempat_stase = DB::table('tempat_stase')->get();
        $sdet = DB::table('stase')
                ->leftJoin('tempat_stase','stase.lokasi_id','=','tempat_stase.lokasi_id')
                ->where('lokasi_id',$sid)
                ->where('res_id',$id)->get();
        return view('adminpages.residen.stase_edit',['id',$id,'vstase'=>$data,'tempat_stase'=>$tempat_stase,'sdet'=>$sdet]);
    }

}