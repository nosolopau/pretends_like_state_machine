ENV["MONGOID_ENV"] = "test"

require 'test_helper'
require 'mongoid'
require 'pretends_like_state_machine'
require 'minitest/autorun'

Mongoid.load!('./test/mongoid.yml')