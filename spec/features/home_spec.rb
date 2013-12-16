require 'spec_helper'

feature 'Home' do
  scenario '/' do
    visit '/'

    page.should have_content('Web Developer Glossary')
  end
end
