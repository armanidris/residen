<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Agama;
use App\Models\Stase;
use App\Models\Kursus;
use App\Models\Makalah;
use App\Models\Pembimbing;
use Illuminate\Support\Arr;
use App\Models\ResidenModel;
use Illuminate\Http\Request;
// use Intervention\Image\ImageManagerStatic as Image;
use Image;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Cache\RateLimiting\Limit;

class ResidenController extends Controller
{
    private $rom = [ 'I'=>1, 'II'=>2, 'III'=>3, 'IV'=>4, 'V'=>5, 'VI'=>6, 'VII'=>7, 'VIII'=>8, 'IX'=>9, 'X'=>10, 'XI'=>11, 'XII'=>12, 'XIII'=>13, 'XIV'=>14, 'XV'=>15, 'XVI'=>16, 'XVII'=>17, 'XVIII'=>18, 'XIX'=>19, 'XX'=>20 ];

    public function index(Request $request)
    {
        $request->session()->forget('res_id');
        $request->session()->forget('res_name');
        $res = ResidenModel::orderBy('smt_nomor','DESC')->get();
        return view('adminpages.residen.main',['data'=>$res]);
    }

    public function show(Request $request, $id)
    {
        $request->session()->put('res_id',$id);
        
        $id = Crypt::decryptString($id);
        $res = ResidenModel::where('res_id',$id)->get();
        $request->session()->put('res_name',$res[0]->res_name);
        
         return view('adminpages.residen.residen_detail',['res'=>$res]);
    }

    public function create()
    {
        $agama = Agama::all();
        $pembimbing = Pembimbing::all();
        $smt = DB::table('semester')->get();
        return view('adminpages.residen.residen_create',['agama'=>$agama,'pembimbing'=>$pembimbing,'smt'=>$smt]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'res_name'=>'required',
            'tahun_masuk'=>'required',
            'tanggal_lahir'=>'required',
            'smt' => 'required'
        ]);  

        
        $data = $request->all();
        $data['tahun_masuk'] = $request->tahun_masuk."-".$request->bulan_masuk."-01";
        $data['tanggal_lahir'] = date("Y-m-d",strtotime($request->tanggal_lahir));     
        $data['smt_nomor']=Arr::get($this->rom,$request->smt);
        unset($data['_token']);
        unset($data['bulan_masuk']);
        ResidenModel::create($data);
        $message = 'Berhasil menambahkan data '. $request->res_name ;
        $request->session()->flash('success',$message);
        return redirect('/residen');
    }

    public function edit(Request $request, $id)
    {
        $id = Crypt::decryptString($id);
        $res = ResidenModel::where('res_id',$id)->get();
        $request->session()->put('res_name',$res[0]->res_name);
        $agama = DB::table('agama')->get();
        $pembimbing = DB::table('pembimbing')->get();
        $smt = DB::table('semester')->get();
        return view('adminpages.residen.residen_edit',['residen_bedah'=>$res,'agama'=>$agama,'pembimbing'=>$pembimbing,'smt'=>$smt]);
    }

    public function update(Request $request)
    {
        $request->validate([
            'res_name' => 'required',
            'tanggal_lahir' => 'required',
            'tahun_masuk' => 'required',
            'file_foto' => 'image|file|max:1024'
        ]);

        $data=$request->all();
        $res_id=Crypt::decryptString($data['res_id']);
        $data['tanggal_lahir']=date('Y-m-d',strtotime($data['tanggal_lahir']));
        $data['tahun_masuk'] = $request->tahun_masuk."-".$request->bulan_masuk."-01";
        $data['res_id']=$res_id;
        $data['smt_nomor'] = Arr::get($this->rom,$request->smt);
        unset($data['_token']);
        unset($data['bulan_masuk']);
        if ($request->file('file_foto')) {
            $file = $request->file('file_foto');
            $fileResize = Image::make($file->path());
            $fileName = $request->tahun_masuk."-".str_replace(' ','_',$file->getClientOriginalName());
            $destinationPath = public_path().'/images/photos';
            $fileResize->resize(256, 256, function ($constraint) {
                $constraint->aspectRatio();
            }
        );
            $fileResize->save($destinationPath.'/'.$fileName);
            // $file->move($destinationPath,$fileName);
            $data['file_foto'] = $fileName;
        }
        DB::table('residen_bedah')->where('res_id',$res_id)->update($data);


        $request->session()->flash('success','Data berhasil diubah');
        return back();
    }

    public function destroy(Request $request, $id)
    {
        $id = Crypt::decryptString($id);
        ResidenModel::where('res_id',$id)->delete();

        $request->session()->flash('success','Data berhasil dihapus');
        return redirect('/residen');
    }

    public function printPdf ($id)
    {
        $id = Crypt::decryptString($id);
        $data = ResidenModel::where('res_id',$id)->get();
        $pdf = PDF::loadView('adminpages.residen.residen_print',['data'=>$data]);
        return $pdf->download('print-pdf.pdf');
    }


    public function makalah_create($id)
    {
        $makalah = Makalah::where('res_id',$id)->get();
        $pembimbing = DB::table('pembimbing')->get();
        foreach ($makalah as $row);
        return view('adminpages.residen.makalah_create',['id',$id,'vmakalah'=>$makalah,'pembimbing'=>$pembimbing]);

    }

    public function makalah_store(Request $request)
    {
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['tanggal_baca']=date("Y-m-d",strtotime($request->tanggal_baca));
        unset($data['_token']);
        Makalah::create($data);
        $request->session()->flash('success','Data berhasil diinput');
        return back();
    }

    public function makalah_edit($id,$mid)
    {
        $makalah = Makalah::where('res_id',$id)->get();
        $pembimbing = DB::table('pembimbing')->get();
        $detmakalah = Makalah::where('res_id',$id)
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
        Makalah::where('makalah_id',$mid)->update($data);
        $request->session()->flash('success','Data berhasil diubah');
        return back();
    }

    public function makalah_destroy(Request $request)
    {
        $data=$request->all();
        DB::table('makalah')->where('res_id',$request->res_id)->where('makalah_id',$request->makalah_id)->limit(1)->delete();
        $request->session()->flash('success','Data berhasil dihapus');
        return redirect('/residen/makalah/create/'. $request->res_id );
    }

    public function kursus_create($id)
    {
        $data = Kursus::where('res_id',$id)->get();
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
        Kursus::insert($data);
        $request->session()->flash('success','Data berhasil diinput');
        return back();
    }

    public function kursus_edit($id,$kid)
    {
        $data = Kursus::where('res_id',$id)->get();
        $detail = Kursus::where(['kursus_id'=>$kid,'res_id'=>$id])->get();
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
        Kursus::where('kursus_id',$request->kursus_id)->update($data);
        $request->session()->flash('success','Data berhasil diubah');
        return back();
    }


    public function kursus_destroy(Request $request)
    {
        $data=$request->all();
        DB::table('kursus')->where('res_id',$request->res_id)->where('kursus_id',$request->kursus_id)->limit(1)->delete();
        $request->session()->flash('success','Data berhasil dihapus');
        return redirect('residen/kursus/create/'.$request->res_id);
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

    public function ujian_destroy(Request $request)
    {
        $data=$request->all();
        DB::table('ujian')->where('res_id',$request->res_id)->where('ujian_id',$request->ujian_id)->limit(1)->delete();
        $request->session()->flash('success','Data berhasil dihapus');
        return redirect('residen/ujian/create/'.$request->res_id);
    }

    public function stase_create($id)
    {
        $data = Stase::where('res_id',$id)->get();
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
        $data = Stase::where('res_id',$id)->get();
        $tempat_stase = DB::table('tempat_stase')->get();
        $sdet = Stase::where(['stase.stase_id'=>$sid,'res_id'=>$id])->get();
        return view('adminpages.residen.stase_edit',['id',$id,'vstase'=>$data,'tempat_stase'=>$tempat_stase,'sdet'=>$sdet]);
    }

    public function stase_update(Request $request)
    {
        $Validated = $request->validate([
            'lokasi_id' => 'required|numeric',
            'mulai' => 'required',
            'selesai' => 'required'
        ]);
        $data = $request->all();
        $data['res_id']=Crypt::decryptString($request->res_id);
        $data['mulai']=date("Y-m-d",strtotime($request->mulai));
        $data['selesai']=date("Y-m-d",strtotime($request->selesai));
        unset($data['_token']);
        DB::table('stase')->where('stase_id',$request->stase_id)->update($data);
        return back();
    }

    public function stase_destroy(Request $request)
    {
        $data=$request->all();
        unset($data['_token']);
        DB::table('stase')->where('stase_id',$request->stase_id)->where('res_id',$request->res_id)->delete();
        $request->session()->flash('success','Data berhasil dihapus');
        return redirect('/residen/stase/create/'.$request->res_id);
    }

    public function massedit (Request $request)
    {
        if ($request->isMethod('post'))  {
            // dd($request->all());

            if (isset($request->res_id)) {
                $req = $request->all();
                unset ($req['_token']);
                $i=0;
                $tid = count ($req['res_id']);
                    for ($i=0;$i<$tid;$i++) {
                        $req['smt_nomor'][$i]=Arr::get($this->rom,$req['smt'][$i]);
                        ResidenModel::where('res_id',$req['res_id'][$i])->update(['smt'=>$req['smt'][$i],'lulus'=>$req['lulus'][$i],'smt_nomor'=>$req['smt_nomor'][$i]]);
                    }
                } else {

                    $request->session()->put('smt',$request->semester); 
                    // dd (session('smt'));
                }
                return redirect('/residen/massedit');            
        } else {
            $lsmt = DB::table('semester')->get();
            $min_smt = DB::table('residen_bedah')
                        ->selectRaw('smt,min(smt_no) as no ')
                        ->join('semester','residen_bedah.smt',"=","semester.smt_romawi","left")
                        ->groupBy('smt')
                        ->orderBy('smt_no')
                        ->limit(1)
                        ->get();
            if (empty(session('smt'))) {
                $request->session()->put('smt',$min_smt[0]->smt);
            }
            $list_residen = ResidenModel::where('smt',session('smt'))->get();
            return view('adminpages.residen.massedit',['list_smt'=>$lsmt,'list_residen'=>$list_residen]);
        }
    }

    public function pshow(Request $request)
    {
        if ($request->isMethod('post'))  {
            $data = ResidenModel::where('res_name','like','%'.$request->res_name.'%')->get();
            if (count($data) == 1) {
                return view('adminpages.residen.pshow',['data'=>$data]);
            } else if (count($data) > 1) {
                return view('adminpages.residen.pshow',['list'=>$data]);
            } else {
                $request->session()->flash('info','Data tidak ditemukan');
                return redirect('/residen/pshow');
            }
        } else {
            return view('adminpages.residen.pshow');
        }
    }
}
