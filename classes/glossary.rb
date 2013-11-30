require 'glossary/dsl'
require 'glossary/term'

module Glossary
  class << self
    def clear
      @terms = {}
    end

    def define &block
      extend Glossary::DSL

      instance_exec &block
    end

    def define_term term
      @terms ||= {}
      @terms[term.term] = term
    end

    def sort_terms
      sorted = {}
      @terms.keys.sort.each do |k|
        sorted[k] = @terms[k]
      end
      @terms = sorted
    end

    def term_defined? term
      !terms[term].nil?
    end

    def terms
      @terms || {}
    end
  end
end
