<?php

class textFormatting {
    private $colors = [
        'dark_gray'     => '1;30',
        'red'           => '0;31',
        'yellow'        => '1;33',
        'light_green'   => '1;32'
    ];
    public function colorize($text, $color) {
        return "\033[{$this->colors[$color]}m{$text}\033[0m";
    }
}

$t = new textFormatting();
print(
    $t->colorize("\n** Run Geek Run! Workout **\n\n", 'red') .
    $t->colorize("45 minute treadmill run\n\n", 'light_green') .
    $t->colorize("Sometimes all you need is a good long cardio workout.\n" .
        "For this one challenge yourself by increasing the treadmill\n" .
        "speed by 0.5 MPH every 5 minutes and increasing the incline\n" .
        "by 1 every 10 minutes.\n\n", 'dark_gray') .
    $t->colorize("Aim for 5 miles, which would put your mile pace at 1 mile \n" .
        "every 9 minutes or a speed of approximately 6.7 MPH.\n\n\n", 'yellow')
);

