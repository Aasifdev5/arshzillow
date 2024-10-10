<?php

namespace App\Providers;

use App\Models\Listing;
use App\Policies\ListingPolicy;
use App\Policies\NotificationPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Notifications\DatabaseNotification;

class AuthServiceProvider extends ServiceProvider
{
    // Register policies
    protected $policies = [
        Listing::class => ListingPolicy::class,
        DatabaseNotification::class => NotificationPolicy::class, // Corrected line
    ];

    public function boot(): void
    {
        $this->registerPolicies();
    }
}
