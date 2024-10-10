<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\ListingController;
use App\Http\Controllers\ListingOfferController;
use App\Http\Controllers\RealtorListingAcceptOfferController;
use App\Http\Controllers\RealtorListingController;
use App\Http\Controllers\RealtorListingImageController;
use App\Http\Controllers\UserAccountController;
use Illuminate\Support\Facades\Route;



Route::get('/', [ListingController::class, 'index'])->name('index');
Route::get('/show', [IndexController::class, 'show'])->name('show')->middleware('auth');


Route::resource('listing', ListingController::class)->except('create', 'store', 'edit', 'update', 'destroy');

Route::resource('listing.offer',ListingOfferController::class)->middleware('auth')->only(['store']);

Route::get('login', [AuthController::class, 'create'])->name('login');
Route::post('login', [AuthController::class, 'store'])->name('login.store');
Route::delete('logout', [AuthController::class, 'destroy'])->name('logout');

Route::resource('user-account', UserAccountController::class)->only(['create']);

Route::post('store', [UserAccountController::class, 'store'])->name('user-account.store');




Route::prefix('realtor')->name('realtor.')->middleware('auth')->group(function () {
    Route::name('listing.restore')->put('listing/{listing}/restore',[RealtorListingController::class,'restore'])->withTrashed();
    Route::resource('listing', RealtorListingController::class)->only('index', 'create', 'store', 'edit', 'update', 'destroy')->withTrashed();
    Route::resource('listing.image', RealtorListingImageController::class);
    Route::get('listing/{listing}/show', [RealtorListingController::class, 'show'])->name('listing.show');
    Route::name('offer.accept')->put('offer/{offer}/accept',RealtorListingAcceptOfferController::class);
});

