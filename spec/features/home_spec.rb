require 'spec_helper'

feature 'Home' do
  scenario '/' do
    visit '/'

    page.should have_content('Web glossary')
  end
end
