module Glossary
  class Term
    attr_accessor :term, :subtitle, :body

    def initialize term
      @term = term
    end
  end
end
