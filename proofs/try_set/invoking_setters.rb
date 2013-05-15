require_relative '../proofs_init'

title 'Invoking Setters'

module InvokingSettersProofs
  class Example
    include TrySet
    
    def initialize
      @some_value = 42
    end

    def some_value=(new_value)
      @some_value = new_value
    end

    module Proof
      def value?(value)
        @some_value == value
      end
    end
  end

  module Builders
    extend self

    def example
      Example.new
    end
  end
end

def build
  InvokingSettersProofs::Builders
end

proof 'Invokes the setter if the object responds to the setter method' do
  example = build.example

  example.try_set(:some_value, 33)

  example.prove { value?(33) }
end

proof 'Does not fail if the object does not respond to the setter method' do
  example = build.example

  example.try_set(:some_non_existant_value, 34)

  example.prove { true }
end

