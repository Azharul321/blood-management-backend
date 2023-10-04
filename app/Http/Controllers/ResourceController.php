<?php

namespace App\Http\Controllers;

use App\Models\Resource;
use Illuminate\Http\Request;

class ResourceController extends Controller
{
    public function index()
    {
        // Retrieve and return all resources
        return Resource::all();
    }

    public function store(Request $request)
    {
        // Validate and store a new resource
        $validatedData = $request->validate([
            'field1' => 'required',
            'field2' => 'required',
        ]);

        $resource = Resource::create($validatedData);

        return $resource;
    }

    public function show($id)
    {
        // Retrieve and return a specific resource by ID
        return Resource::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        // Validate and update a specific resource by ID
        $validatedData = $request->validate([
            'field1' => 'required',
            'field2' => 'required',
        ]);

        $resource = Resource::findOrFail($id);
        $resource->update($validatedData);

        return $resource;
    }

    public function destroy($id)
    {
        // Delete a specific resource by ID
        $resource = Resource::findOrFail($id);
        $resource->delete();

        return response()->noContent();
    }
}

