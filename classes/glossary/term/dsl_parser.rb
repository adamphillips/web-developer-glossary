require 'kramdown'

module Glossary
  class Term
    class DSLParser
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      # The body of the page for the term.
      def body value
        value = Kramdown::Document.new(value,
          enable_coderay: true,
          coderay_line_numbers: nil,
          coderay_wrap: :div,
        ).to_html
        @term.body = value
      end

      # File to load. Assumes the file lives in content/glossary and has the
      # .md suffix
      def file filename
        body IO.read "./content/glossary/#{filename}.md"
      end

      # Adds a link for the current term.
      def link url, title=nil, desc=nil
        @term.links << Glossary::Link.new(url, title, desc)
      end

      # Subtitle for the term.
      def subtitle value
        @term.subtitle = value
      end

      # Wikipedia definition for the term. Useful for terms that need
      # disambiguation.
      def wikipedia_term value
        @term.wikipedia_term = value
      end
    end
  end
end
