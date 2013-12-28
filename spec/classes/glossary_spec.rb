require 'spec_helper'

describe Glossary do
  describe 'a failing example' do
    it 'should always fail' do
      true.should == false
    end
  end

  describe '#clear' do
    it 'should remove all terms from the Glossary' do
      Glossary.define do
        term 'a new term'
      end

      Glossary.terms.length.should be > 0
      Glossary.clear
      Glossary.terms.length.should == 0
    end
  end

  describe '#define_term' do
    it 'should be possible to define new terms' do
      expect{
        Glossary.define_term(Glossary::Term.new('something'))
      }.to change{
        Glossary.terms.length
      }.by(1)
    end
  end

  describe '#sort_terms' do
    it 'should sort the terms in the Glossary by hash key' do
      Glossary.clear
      Glossary.define do
        term 'second term'
        term 'first term'
      end

      Glossary.terms.to_a[0][0].should == 'second term'
      Glossary.terms.to_a[1][0].should == 'first term'

      Glossary.sort_terms

      Glossary.terms.to_a[0][0].should == 'first term'
      Glossary.terms.to_a[1][0].should == 'second term'
    end
  end
end
