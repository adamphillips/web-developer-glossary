module Glossary
  class Term
    attr_accessor :term, :subtitle, :body
    attr_writer :wikipedia_term

    def initialize term
      @term = term
    end

    def wikipedia_label
      "#{term} on Wikipedia"
    end

    def wikipedia_url
      "http://en.wikipedia.org/wiki/#{wikipedia_term}"
    end

    def wikipedia_term
      @wikipedia_term = @wikipedia_term || term
    end
  end
end
