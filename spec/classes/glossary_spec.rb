require 'spec_helper'

describe Glossary do
  describe '#define_term' do
    it 'should be possible to define new terms' do
      expect{
        Glossary.define_term(Glossary::Term.new('something'))
      }.to change{
        Glossary.terms.length
      }.by(1)
    end
  end
end
