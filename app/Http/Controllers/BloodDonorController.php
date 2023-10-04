<?php

namespace App\Http\Controllers;

use App\Models\BloodDonor;
use Faker\Core\Blood;
use Illuminate\Http\Request;

class BloodDonorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return BloodDonor::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $resource = BloodDonor::create($request->all());

        return $resource;
    }

    /**
     * Display the specified resource.
     */
    public function show(BloodDonor $bloodDonor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(BloodDonor $bloodDonor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, BloodDonor $bloodDonor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $resource = BloodDonor::findOrFail($id);
        $resource->delete();

        return response()->noContent();
    }
}
