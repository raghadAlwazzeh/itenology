<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\HomepageSlider;

class HeaderServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        
        view()->composer('app', function($view) {
            $images= HomepageSlider::all();
            $view->with('images', $images);
        });
    }
}
