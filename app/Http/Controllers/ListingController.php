<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ListingController extends Controller
{
    use AuthorizesRequests;
    public function __construct()
{
    // $this->authorizeResource(Listing::class, 'listing');
    // $this->middleware('auth');
}


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // if (Auth::user()->can('view', Listing::class)) {
        //     abort('403');
        // }
        return inertia('Listing/Index', [
            'listings' => Listing::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $this->authorize('create', Listing::class);
        return inertia('Listing/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        Auth::user()->listings()->create(

            $request->validate([
                'beds' => 'required|integer|min:0|max:20',
                'baths' => 'required|integer|min:0|max:10',
                'area' => 'required|integer|min:15|max:1500',
                'city' => 'required',
                'code' => 'required',
                'street' => 'required',
                'street_nr' => 'required',
                'price' => 'required|numeric',
            ])
        );
        return redirect()->route('listing.index')->with('success', 'Listing was created!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Listing $listing)
    {

        // if (Auth::user()->cannot('view', $listing)) {
        //     abort('403');
        // }
        // $this->authorize('view', $listing);
        return inertia('Listing/Show', [
            'listing' => $listing
        ]);
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Listing $listing)
    {
        return inertia('Listing/Edit', [
            'listing' => $listing
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Listing $listing)
    {
        $listing->update(

            $request->validate([
                'beds' => 'required|integer|min:0|max:20',
                'baths' => 'required|integer|min:0|max:10',
                'area' => 'required|integer|min:15|max:1500',
                'city' => 'required',
                'code' => 'required',
                'street' => 'required',
                'street_nr' => 'required',
                'price' => 'required|numeric',
            ])
        );
        return redirect()->route('listing.index')->with('success', 'Listing was changed!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Listing $listing)
    {
        $listing->delete();
        return redirect()->back()->with('success', 'Listing was deleted!');
    }
}
