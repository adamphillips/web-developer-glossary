require 'spec_helper'

describe Glossary::Term::DSLParser do
  before do
    @term = Glossary::Term.new 'a-term'
  end

  it 'should be possible to define the body of the term as a string' do
    Glossary::Term::DSLParser.new @term do
      body 'A new term'
    end
    @term.body.should == "<p>A new term</p>\n"
  end

  it 'should be possible to define the body of the term using markdown' do
    Glossary::Term::DSLParser.new @term do
      body '# A term'
    end

    @term.body.should == "<h1>A term</h1>\n"
  end
end
