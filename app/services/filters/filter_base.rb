  module Filters
    class FilterBase
      def initialize(scope:, input:)
        @scope = scope
        @input = input

        validate_input!
      end

      def call
        return @scope if filter_input.blank?

        apply(scope: @scope, filter_input: filter_input)
      end

      def self.call(scope:, input:)
        new(scope: scope, input: input).call
      end

      def apply(scope:, filter_input:)
        raise NotImplementedError
      end

      private

        def filter_key
          raise NotImplementedError
        end

        def filter_input
          @input.with_indifferent_access[filter_key]
        end

        def validate_input!
          return if @input.is_a? Hash

          raise ArgumentError, "input.class incorrect. Expected Hash, got #{@input.class}"
        end
    end
  end
