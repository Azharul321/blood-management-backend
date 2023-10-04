<?php

use App\Http\Controllers\BloodDonorController;
use App\Http\Controllers\BloodRequestController;
use App\Http\Controllers\InterestedDonorController;
use App\Http\Controllers\RequestToDonorController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ResourceController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::apiResource('resources', ResourceController::class);

Route::apiResource('blood-donor', BloodDonorController::class);
Route::apiResource('blood-request', BloodRequestController::class);
Route::apiResource('interested-donor', InterestedDonorController::class);
Route::apiResource('request-to-donor', RequestToDonorController::class);
