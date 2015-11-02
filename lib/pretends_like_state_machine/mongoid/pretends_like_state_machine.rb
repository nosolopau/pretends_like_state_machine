module PretendsLikeStateMachine
  module Mongoid
    extend ActiveSupport::Concern

    module ClassMethods
      def pretends_like_state_machine(options = {})
        field :state, type: Symbol

        options[:states].each do |state|
          define_method("#{state}!") do
            set(state: state)
          end

          define_method("#{state}?") do
            self.state == state
          end
        end
      end
    end
  end
end

Mongoid::Document.send :include, PretendsLikeStateMachine::Mongoid
