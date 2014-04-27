require 'spec_helper'

feature 'Visitor can see homepage' do 

  scenario 'when visiting the root_url' do
    visit root_path
    expect(page).to have_content('Reading Code Good')
  end  

end