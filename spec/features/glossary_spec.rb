require 'spec_helper'

feature 'the glossary' do
  before do
    Glossary.define_term Glossary::Term.new('HTTP')
  end

  scenario 'viewing a term' do
    visit '/glossary/terms/HTTP'
    #binding.pry
    within 'h1' do
      page.should have_content('HTTP')
    end

    within 'h2' do
      page.should have_content('Hypertext Transport Protocol')
    end
  end
end

