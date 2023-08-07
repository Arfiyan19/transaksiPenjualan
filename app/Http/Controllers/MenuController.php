<?php

namespace App\Http\Controllers;

use App\menu;
use Illuminate\Http\Request;
use App\Tahun;
use Illuminate\Support\Facades\DB;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = menu::with('tahun', 'kategori')->get();
        $tahun = Tahun::all();
        // $kategori = DB::table('kategori')->get();
        $kategori2 = DB::table('kategori')->get();
        $bulan = [];
        for ($i = 1; $i <= 12; $i++) {
            $bulan[$i] = $i;
        }
        // $menuArray[][] = 0;
        // foreach ($data as $key => $value) {
        //     $menuArray[$value->id_tahun][$value->id_kategori] = $value->terjual;
        // }
        // dd($data);
        return view('transaksi.index', compact('data', 'tahun', 'kategori2'));
    }

    public function json(Request $request)
    {
        $data = menu::with('tahun')->get();
        // return json 
        return json_encode($data);
    }
    public function menu(Request $request)
    {
        $data = menu::with('kategori')->select('id', 'nama', 'harga', 'id_kategori')->get();
        // return json 
        return json_encode($data);
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
     * @param  \App\menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(menu $menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(menu $menu)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, menu $menu)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(menu $menu)
    {
        //
    }
}
