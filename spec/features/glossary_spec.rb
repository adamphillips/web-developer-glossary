require 'spec_helper'

feature 'the glossary' do
  scenario 'viewing a term that exists' do
    visit '/glossary/terms/HTTP'

    within '.jumbotron' do
      within 'h1' do
        page.should have_content('HTTP')
      end

      within 'p' do
        page.should have_content(/The glue/)
      end
    end

    within '.content' do
      within 'p' do
        page.should have_content(/HTTP is/)
      end
    end
  end

  scenario '404s when the term is not defined' do
    visit '/glossary/terms/nonsense'

    page.status_code.should == 404
  end
end

