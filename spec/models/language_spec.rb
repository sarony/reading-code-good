require 'spec_helper'

describe Language do 

  it "can have a name" do 
    language = Language.new
    language.name = "ruby"
    expect(language.name).to eq("ruby")
  end

end