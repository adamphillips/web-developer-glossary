require 'redcarpet'

module Glossary
  class Term
    class DSLParser
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      def body value
        markdown = Redcarpet::Markdown.new(
          Redcarpet::Render::HTML,
          autolink: true,
          space_after_headers: true
        )
        value = markdown.render value
        @term.body = value
      end

      def subtitle value
        @term.subtitle = value
      end
    end
  end
end
