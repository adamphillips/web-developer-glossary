require 'spec_helper'

feature 'the glossary' do
  scenario 'viewing a term' do
    visit '/glossary/terms/HTTP'

    within 'h1' do
      page.should have_content('HTTP')
    end

    within 'h2' do
      page.should have_content('Hypertext Transport Protocol')
    end
  end
end

