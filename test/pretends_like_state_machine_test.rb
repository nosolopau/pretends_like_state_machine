require 'test_helper'

class MyProcess
  include Mongoid::Document

  pretends_like_state_machine states: [:waiting, :processing, :processed]
end

describe PretendsLikeStateMachine do
  it 'state defaults to nil' do
    MyProcess.new.state.must_be_nil
  end

  it 'transition to a valid state must perform a transition to the state' do
    my_process = MyProcess.new
    my_process.waiting!
    my_process.state.must_equal :waiting
  end

  it 'the `state?` operation must return true if the machine is in `state` and false in other case' do
    my_process = MyProcess.new
    my_process.waiting!
    my_process.waiting?.must_equal true
    my_process.processing?.must_equal false
  end

  it 'transition to an invalid state must throw a NoMethodError exception' do
    my_process = MyProcess.new
    assert_raises NoMethodError do
      my_process.meow!
    end
  end

end
