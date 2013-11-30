module Glossary
  class Term
    class DSL
      def initialize term, &block
        @term = term

        instance_exec &block
      end

      def subtitle value
        @term.subtitle = value
      end
    end
  end
end
