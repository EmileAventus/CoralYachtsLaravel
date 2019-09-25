<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class Yachts extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Yacht::count();
        $string = trans_choice('Yachts', $count);
  
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-boat',
            'title'  => "{$count} {$string}",
            'text'  => __( "" ),
            'button' => [
                'text' => __('View all Yachts'),
                'link' => route('voyager.yachts.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return auth()->user()->hasRole("user");
    }
}
