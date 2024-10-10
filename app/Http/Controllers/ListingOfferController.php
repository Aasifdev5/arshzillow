<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use App\Models\Offer;
use App\Notifications\OfferMade;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;

class ListingOfferController extends Controller
{
    use AuthorizesRequests;
    public function store(Listing $listing, Request $request)
    {
        $this->authorize('view', $listing);
        $offer = $listing->offers()->save(
            Offer::make(
                $request->validate([
                    'amount' => 'required|numeric|min:1|max:2000000',
                ])
            )->bidder()->associate($request->user())
        );
        $listing->owner->notify(
            new OfferMade($offer)
        );
        return redirect()->back()->with('success', 'Offer was made');
    }
}
