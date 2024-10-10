<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Notifications\DatabaseNotification;

class NotificationSeenController extends Controller
{
    use AuthorizesRequests;
    public function __invoke(DatabaseNotification $notification){

        $notification->markAsRead();
        return redirect()->back()->with('success','Notification marked as read');
    }
}
