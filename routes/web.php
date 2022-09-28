<?php

// use App\Models\User;
use App\Http\Controllers\Intranet;
use App\Http\Controllers\UserProfile;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\MasterController;
use App\Http\Controllers\ResidenController;
use App\Http\Controllers\PMakalahController;

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

Route::get('/', [Intranet::class,'index']);
Route::get('/residen/pshow',[ResidenController::class,'pshow']);
Route::post('/residen/pshow',[ResidenController::class,'pshow']);
Route::get('/login', [LoginController::class,'index'])->name('login')->middleware('guest');
Route::post('/logout', [LoginController::class,'logout']);
Route::post('/login', [LoginController::class,'authenticate']);
Route::get('/dashboard',[AdminController::class,'index'])->middleware('auth');

Route::get('/profile/{encid}',[UserProfile::class,'index'])->middleware('auth');
Route::post('/profile/{encid}',[UserProfile::class,'update_profile'])->middleware('auth');

Route::get('/password/{encid}',[UserProfile::class,'pass_main'])->middleware('auth');
Route::post('/password/{encid}',[UserProfile::class,'pass_update'])->middleware('auth');

Route::get('/mstase',[MasterController::class,'stase_index'])->middleware('auth');
Route::get('/mstase/create',[MasterController::class,'stase_create'])->middleware('auth');
Route::post('/mstase/create',[MasterController::class,'stase_store'])->middleware('auth');
Route::get('/mstase/edit/{id}',[MasterController::class,'stase_edit'])->middleware('auth');
Route::post('/mstase/edit/{id}',[MasterController::class,'stase_update'])->middleware('auth');
Route::post('/mstase/destroy/{id}',[MasterController::class,'stase_destroy'])->middleware('auth');

Route::get('/mpembimbing',[MasterController::class,'pembimbing_index'])->middleware('auth');
Route::get('/mpembimbing/create',[MasterController::class,'pembimbing_create'])->middleware('auth');
Route::post('/mpembimbing/create',[MasterController::class,'pembimbing_store'])->middleware('auth');
Route::get('/mpembimbing/edit/{id}',[MasterController::class,'pembimbing_edit'])->middleware('auth');
Route::post('/mpembimbing/edit/{id}',[MasterController::class,'pembimbing_update'])->middleware('auth');
Route::post('/mpembimbing/destroy/{id}',[MasterController::class,'pembimbing_destroy'])->middleware('auth');

Route::get('/residen',[ResidenController::class,'index'])->middleware('auth');
Route::get('/residen/create',[ResidenController::class,'create'])->middleware('auth');
Route::post('/residen/create',[ResidenController::class,'store'])->middleware('auth');
Route::get('/residen/massedit',[ResidenController::class,'massedit'])->middleware('auth');
Route::post('/residen/massedit',[ResidenController::class,'massedit'])->middleware('auth');
Route::get('/residen/{id}',[ResidenController::class,'show'])->middleware('auth');
Route::get('/residen/edit/{id}',[ResidenController::class,'edit'])->middleware('auth');
Route::post('/residen/edit/{id}',[ResidenController::class,'update'])->middleware('auth');
Route::post('/residen/delete/{id}',[ResidenController::class,'destroy'])->middleware('auth');
Route::get('/residen/printpdf/{id}',[ResidenController::class,'printPdf'])->middleware('auth');


Route::get('/residen/makalah/create/{id}',[ResidenController::class,'makalah_create'])->middleware('auth');
Route::post('/residen/makalah/create/{id}',[ResidenController::class,'makalah_store'])->middleware('auth');
Route::get('/residen/makalah/edit/{id}/{mid}',[ResidenController::class,'makalah_edit'])->middleware('auth');
Route::post('/residen/makalah/edit/{id}/{mid}',[ResidenController::class,'makalah_update'])->middleware('auth');
Route::post('/residen/makalah/delete',[ResidenController::class,'makalah_destroy'])->middleware('auth');

Route::get('/residen/kursus/create/{id}',[ResidenController::class,'kursus_create'])->middleware('auth');
Route::post('/residen/kursus/create/{id}',[ResidenController::class,'kursus_store'])->middleware('auth');
Route::get('/residen/kursus/edit/{id}/{mid}',[ResidenController::class,'kursus_edit'])->middleware('auth');
Route::post('/residen/kursus/edit/{id}/{mid}',[ResidenController::class,'kursus_update'])->middleware('auth');
Route::post('/residen/kursus/delete',[ResidenController::class,'kursus_destroy'])->middleware('auth');

Route::get('/residen/ujian/create/{id}',[ResidenController::class,'ujian_create'])->middleware('auth');
Route::post('/residen/ujian/create/{id}',[ResidenController::class,'ujian_store'])->middleware('auth');
Route::get('/residen/ujian/edit/{id}/{ujid}',[ResidenController::class,'ujian_edit'])->middleware('auth');
Route::post('/residen/ujian/edit/{id}/{ujid}',[ResidenController::class,'ujian_update'])->middleware('auth');
Route::post('/residen/ujian/delete',[ResidenController::class,'ujian_destroy'])->middleware('auth');

Route::get('/residen/stase/create/{id}',[ResidenController::class,'stase_create'])->middleware('auth');
Route::post('/residen/stase/create/{id}',[ResidenController::class,'stase_store'])->middleware('auth');
Route::get('/residen/stase/edit/{id}/{ujid}',[ResidenController::class,'stase_edit'])->middleware('auth');
Route::post('/residen/stase/edit/{id}/{ujid}',[ResidenController::class,'stase_update'])->middleware('auth');
Route::post('/residen/stase/delete',[ResidenController::class,'stase_destroy'])->middleware('auth');

Route::get('/pembimbing_makalah',[PMakalahController::class,'index'])->middleware('auth');
Route::get('/pembimbing_makalah/detail',[PMakalahController::class,'detail'])->middleware('auth');