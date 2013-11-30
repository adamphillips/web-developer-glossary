require 'spec_helper'

feature 'the glossary' do
  scenario 'viewing a term that exists' do
    visit '/glossary/terms/HTTP'
    #binding.pry
    within 'h1' do
      page.should have_content('HTTP')
    end

    within 'h2' do
      page.should have_content('Hypertext Transport Protocol')
    end
  end

  scenario '404s when the term is not defined' do
    visit '/glossary/terms/nonsense'

    page.status_code.should == 404
  end
end

