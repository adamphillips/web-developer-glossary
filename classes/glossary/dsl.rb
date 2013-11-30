require 'glossary/term/dsl_parser'

module Glossary
  module DSL
    def term title, &block
      term = Glossary::Term.new(title)

      Glossary::Term::DSL.new(term, &block)

      Glossary.define_term term
    end
  end
end
