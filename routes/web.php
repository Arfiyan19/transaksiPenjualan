<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\MenuController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::group(['prefix' => 'auth'], function () {
    Auth::routes();
});



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    //transaksi

    Route::get('/settings', "SettingController@index")->name('settings');
    Route::post('/settings', "SettingController@simpan")->name('settings.simpan');

    Route::group(['prefix' => 'barang', 'as' => 'barang.'], function () {
        Route::get('/print', 'Commodities\PdfController@generatePdf')->name('print');
        Route::get('/print/{id}', "Commodities\PdfController@generatePdfOne")->name('print.one');
    });

    Route::get('/dashboard', 'HomeController@index')->name('home');

    Route::resource('/transaksi', 'MenuController');
    // transaksi.json
    Route::post('/transaksi/json', 'MenuController@json')->name('transaksi.json');
    Route::post('/transaksi/menu', 'MenuController@menu')->name('transaksi.menu');
});
