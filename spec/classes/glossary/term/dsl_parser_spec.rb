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

    @term.body.should == "<h1 id=\"a-term\">A term</h1>\n"
  end

  it 'should be possible to add related links' do
    Glossary::Term::DSLParser.new @term do
      link 'http://www.agreatarticle.com',
            'Some article',
            'It is really good'
      link 'http://www.alamearticle.com',
            'It is a bit lame',
            'Another article'
    end

    @term.links.length.should == 2
    @term.links.first.title.should == 'Some article'
    @term.links.first.description.should == 'It is really good'
    @term.links.first.url.should == 'http://www.agreatarticle.com'
  end
end
