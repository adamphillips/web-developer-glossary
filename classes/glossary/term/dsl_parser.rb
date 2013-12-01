require 'kramdown'

module Glossary
  class Term
    class DSLParser
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      def body value
        value = Kramdown::Document.new(value,
          enable_coderay: true,
          coderay_line_numbers: nil,
          coderay_wrap: :div,
        ).to_html
        @term.body = value
      end

      def subtitle value
        @term.subtitle = value
      end

      def wikipedia_term value
        @term.wikipedia_term = value
      end
    end
  end
end
