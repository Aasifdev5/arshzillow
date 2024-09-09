<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use App\Models\ListingImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class RealtorListingImageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Listing $listing)
    {
        $listing->load(['images']);
        return inertia(
            'Realtor/ListingImage/Create',
            ['listing' => $listing]
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, Listing $listing)
{



    if ($request->hasFile('images')) {
        $request->validate([
            'images.*' => 'required|file|mimes:jpg,jpeg,png,webp|max:5000', // Adjust validation rules as needed
        ],[
            'images.*.mimes' => 'The file should be in one of the formats:jpg,png,jpeg,webp',
        ]);
        foreach ($request->file('images') as $file) {
            $path = $file->store('images', 'public');
            $listing->images()->create([
                'filename' => $path
            ]);
        }
    }

    return redirect()->back()->with('success', 'Images uploaded!');
}


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Listing $listing, ListingImage $image)
    {
        Storage::disk('public')->delete($image->filename);
        $image->delete();
        return redirect()->back()->with('success', 'Image deleted!');
    }
}
