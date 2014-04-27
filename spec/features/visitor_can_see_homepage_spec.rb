require 'spec_helper'

feature 'Visitor can see homepage' do 
  given!(:faq){ FactoryGirl.create(:faq) }
  given!(:code_base){ FactoryGirl.create(:code_bases) }

  scenario 'when visiting the root_url' do
    code_base.loc = Loc.new(:range => "~100")
    code_base.language = Language.new(:name => "ruby")
    code_base.save

    visit root_path
    expect(page).to have_content('Reading Code Good')
    expect(page).to have_content('FAQs')
    expect(page).to have_content(Faq.first.question)
    expect(page).to have_content('Code Bases')
    expect(page).to have_content(CodeBase.first.name)
    expect(page).to have_content(CodeBase.first.language.name)
    expect(page).to have_content(CodeBase.first.loc.range)
    expect(page).to have_link('@readingcodegood')
    expect(page).to have_link('FAQs', href: faqs_path)
    expect(page).to have_link('Code Bases', href: code_bases_path)
  end  

end