<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\Response;
use Illuminate\Notifications\DatabaseNotification;

class NotificationPolicy
{
    /**
     * Determine whether the user can view any notifications.
     */
    public function viewAny(User $user): bool
    {
        return true; // Or implement logic based on your requirements
    }

    /**
     * Determine whether the user can view the notification.
     */
    public function view(User $user, DatabaseNotification $notification): bool
    {
        return $user->id === $notification->notifiable_id;
    }

    /**
     * Determine whether the user can create notifications.
     */
    public function create(User $user): bool
    {
        return false; // Assuming users can't create notifications directly
    }

    /**
     * Determine whether the user can update (mark as read) the notification.
     */
    public function update(User $user, DatabaseNotification $notification): bool
    {
        return $user->id === $notification->notifiable_id;
    }

    /**
     * Determine whether the user can delete the notification.
     */
    public function delete(User $user, DatabaseNotification $notification): bool
    {
        return $user->id === $notification->notifiable_id;
    }

    /**
     * Determine whether the user can restore the notification.
     */
    public function restore(User $user, DatabaseNotification $notification): bool
    {
        return false; // Notifications typically aren't restored
    }

    /**
     * Determine whether the user can permanently delete the notification.
     */
    public function forceDelete(User $user, DatabaseNotification $notification): bool
    {
        return false; // Typically, users can't force delete notifications
    }
}
