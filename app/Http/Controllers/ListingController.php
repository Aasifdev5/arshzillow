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
    public function index(Request $request)
    {
        // if (Auth::user()->can('view', Listing::class)) {
        //     abort('403');
        // }
        $filters = $request->only([
            'priceFrom',
            'priceTo',
            'beds',
            'baths',
            'areaFrom',
            'areaTo'
        ]);

        // if ($filters['priceFrom']??false) {
        //     $query->where('price', '>=', $filters['priceFrom']);
        // }
        // if ($filters['priceTo']??false) {
        //     $query->where('price', '=<', $filters['priceTo']);
        // }
        // if ($filters['beds']??false) {
        //     $query->where('beds',  $filters['beds']);
        // }
        // if ($filters['baths']??false) {
        //     $query->where('baths',  $filters['baths']);
        // }
        // if ($filters['areaFrom']??false) {
        //     $query->where('price', '>=', $filters['areaFrom']);
        // }
        // if ($filters['areaTo']??false) {
        //     $query->where('price', '=<', $filters['areaTo']);
        // }
        return inertia('Listing/Index', [
            'filters' => $filters,
            'listings' => Listing::mostRecent()
                ->filter($filters)
                ->withoutSold()
                ->paginate(10)
                ->withQueryString()

        ]);
    }

    /**
     * Show the form for creating a new resource.
     */


    /**
     * Display the specified resource.
     */
    public function show(Listing $listing)
    {
        // Ensure the user is authorized to view the listing
        $this->authorize('view', $listing);

        // Load related images
        $listing->load(['images']);

        // Check if an offer has been made by the authenticated user
        $offer = Auth::check() ? $listing->offers()->byMe()->first() : null;

        // Return the data to the Inertia component
        return inertia('Listing/Show', [
            'listing' => $listing,
            'offerMade' => $offer
        ]);
    }



    /**
     * Show the form for editing the specified resource.
     */
}
