require 'spec_helper'

describe Loc do 

  it "can have a name" do 
    loc = Loc.new
    loc.range = "~100"
    expect(loc.range).to eq("~100")
  end
end