require 'kramdown'

module Glossary
  class Term
    class DSLParser
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      def body value
        value = Kramdown::Document.new(value).to_html
        @term.body = value
      end

      def subtitle value
        @term.subtitle = value
      end
    end
  end
end
