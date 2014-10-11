# pretends\_like\_state\_machine

A minimal, trivial, deadly simple state machine for Mongoid :)

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