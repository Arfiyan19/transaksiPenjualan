<?php

namespace App\Http\Controllers;

use App\Commodity;
use Illuminate\Http\Request;
use App\Alternatif;
use App\Kriteria;
use App\menu;
use App\Tahun;
use Illuminate\Support\Facades\DB;
use App\kategori;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $commodity_count = Commodity::count();

        // $commodity_condition_good_count = Commodity::where('condition', 1)->count();
        // $commodity_condition_not_good_count = Commodity::where('condition', 2)->count();
        // $commodity_condition_heavily_damage_count = Commodity::where('condition', 3)->count();

        // $commodity_order_by_price = Commodity::orderBy('price', 'DESC')->take(5)->get();
        // $alternatif = Alternatif::all()->count();
        // $criteria = Kriteria::all()->count();

        // return view('transaksi.index');
        $data = menu::with('tahun', 'kategori')->get();
        $tahun = Tahun::all();
        $kategori2 = DB::table('kategori')->get();
        // dd($data);
        return view('transaksi.index', compact('data', 'tahun', 'kategori2'));
    }
}
