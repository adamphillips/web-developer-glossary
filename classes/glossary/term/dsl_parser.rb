require 'arbre'

module Glossary
  class Term
    class DSLParser
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      def body value='', &block
        value = Arbre::Context.new(&block).to_s if block_given?
        @term.body = value
      end

      def subtitle value
        @term.subtitle = value
      end
    end
  end
end
