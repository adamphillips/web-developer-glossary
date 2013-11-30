require 'glossary/dsl'
require 'glossary/term'

module Glossary
  class << self
    def define &block
      extend Glossary::DSL

      instance_exec &block
    end

    def define_term term
      @terms ||= {}
      @terms[term.term] = term
    end

    def term_defined? term
      !terms[term].nil?
    end

    def terms
      @terms || {}
    end
  end
end
