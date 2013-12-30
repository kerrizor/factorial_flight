factorial_flight
================

Patches 4 different solutions for factorials onto Fixnum. 

I get asked to calculate factorials in interviews as an example of recursion all the time, so here you go.

Can we talk about how I solve the real problems facing your product or business now?

## Installation

Add this line to your application's Gemfile:

    gem 'factorial_flight'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install factorial_flight

## Usage

    2.0.0p247 :001 > require 'factorial_flight'
     => true
    2.0.0p247 :002 > 5.factorial
     => 120
    2.0.0p247 :003 > 6.factorial(:recursive)
     => 720
    2.0.0p247 :004 > -1.factorial
     => "Can not calculate factorial of a negative number"
    2.0.0p247 :005 >

Included in the available options for ```#factorial```:

:gamma
: Uses Math::gamma(n+1) 
:inject
: **Default** - Uses Enumerable's ```#inject``` method 
:loop
: Uses a loop to iterate over the range of integers included in the factorial
:recursive
: Perhaps what most interviewers are specifically asking for when requiring a candidate to write an algorithm to find factorials

## Contributing

1. Fork it ( http://github.com/<my-github-username>/factorial_flight/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
