<?php

namespace App\Http\Controllers;

use App\Models\Pembimbing;
use App\Models\TempatStase;
use App\Models\ResidenModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Intranet extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['total_residen']=ResidenModel::select(DB::raw('count(res_id) as total'))->get();
        $data['pembimbing']=Pembimbing::select(DB::raw('count(*) as total'))->get();
        $data['tempat_stase']=TempatStase::select(DB::raw('count(*) as total'))->get();
        $data['sex']=ResidenModel::select(DB::raw('count(res_id) as total'))
                        ->groupBy('sex')
                        ->get();
        $data['tahun_masuk']=ResidenModel::select(DB::raw('tahun_masuk, count(*) as total'))
                        ->groupBy('tahun_masuk')
                        ->get();
        $data['semester']=DB::table('residen_bedah')
                                ->select(DB::raw('smt,count(*) as total,smt_no'))
                                ->join('semester','residen_bedah.smt','=','semester.smt_romawi')
                                ->groupBy(['smt','smt_no'])
                                ->orderBy('smt_no')
                                ->get();

        return view('landingpages/statistik',['data'=>$data]);
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
}
