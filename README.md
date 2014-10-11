# pretends\_like\_state\_machine

[![Build Status](https://travis-ci.org/nosolopau/pretends_like_state_machine.svg?branch=master)](https://travis-ci.org/nosolopau/pretends_like_state_machine)
[![Code Climate](https://codeclimate.com/github/nosolopau/pretends_like_state_machine/badges/gpa.svg)](https://codeclimate.com/github/nosolopau/pretends_like_state_machine)
[![Dependency Status](https://gemnasium.com/nosolopau/pretends_like_state_machine.svg)](https://gemnasium.com/nosolopau/pretends_like_state_machine)

A minimal, trivial, deadly simple state machine for Mongoid :)

## Installation

Add to your Gemfile:

    gem 'pretends_like_state_machine', '~> 0.0.1'

## Example

Just add the macro `pretends_like_state_machine` and provide a list of the valid states. 

Declaration:

    class Processing
      include Mongoid::Document
    
      pretends_like_state_machine states: [:waiting, :processing, :processed]
    end
    
Usage:

    processing = Processing.create
    processing.waiting!
    => true
    processing.waiting?
    => true

## License

MIT License. Copyright 2012-2014 RubyMoney.