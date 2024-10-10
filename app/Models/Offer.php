<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Offer extends Model
{
    use HasFactory;
    protected $fillable = ['amount', 'accepted_at', 'rejected_at'];

    public function listing()
    {
        return $this->belongsTo(Listing::class, 'listing_id');
    }
    public function bidder()
    {
        return $this->belongsTo(User::class, 'bidder_id');
    }
    public function scopeByMe(Builder $query): Builder
    {
        return $query->where('bidder_id', Auth::id()); // Using Auth::id() directly simplifies the code
    }
    public function scopeExcept(Builder $query, Offer $offer)
    {
      return  $query->where('id', '!=', $offer->id);
    }
}
