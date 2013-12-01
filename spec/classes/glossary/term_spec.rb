require 'spec_helper'

describe Glossary::Term do
  describe '#wikipedia_label' do
    it 'should return the label for the wikipedia link' do
      @term = Glossary::Term.new 'HTTP'
      @term.wikipedia_label.should == 'HTTP on Wikipedia'
    end
  end

  describe '#wikipedia_url' do
    it 'should return the url for the wikipedia link' do
      @term = Glossary::Term.new 'HTTP'
      @term.wikipedia_url.should == 'http://en.wikipedia.org/wiki/HTTP'
    end

    context 'with a custom wikipedia term' do
      @term = Glossary::Term.new 'HTTP'
      @term.wikipedia_term = 'Hypertext'
      @term.wikipedia_url.should == 'http://en.wikipedia.org/wiki/Hypertext'
    end
  end
end
