<?php

namespace App\Http\Controllers;

use App\Models\BloodRequest;
use Illuminate\Http\Request;

class BloodRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return BloodRequest::all();
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
        $resource = BloodRequest::create($request->all());

        return $resource;
    }

    /**
     * Display the specified resource.
     */
    public function show(BloodRequest $bloodRequest)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(BloodRequest $bloodRequest)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, BloodRequest $bloodRequest)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $resource = BloodRequest::findOrFail($id);
        $resource->delete();

        return response()->noContent();
    }
}
