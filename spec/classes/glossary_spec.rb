require 'spec_helper'

describe Glossary do
  describe '#define_term' do
    it 'should be possible to define new terms' do
      Glossary.define_term Glossary::Term.new('something')
      Glossary.terms.length.should == 1
    end
  end
end
