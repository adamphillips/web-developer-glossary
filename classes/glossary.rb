require 'glossary/term'

module Glossary
  def self.terms
    @terms || {}
  end

  def self.define_term term
    @terms ||= {}
    @terms[term.term] = term
  end
end
