require 'spec_helper'

describe CodeBase do 

  it "can have a name" do 
    code_base = CodeBase.new
    code_base.name = "GoogleBooks"
    expect(code_base.name).to eq("GoogleBooks")
  end

  it "can have a link" do 
    code_base = CodeBase.new
    code_base.link = "http://github.com/GoogleBooks"
    expect(code_base.link).to eq("http://github.com/GoogleBooks")
  end

  it "can belong to a language" do 
    code_base = CodeBase.new
    code_base.language = Language.new(:name => "ruby")
    expect(code_base.language).to be_a(Language)
  end

  it "can belong to a length" do 
    code_base = CodeBase.new
    code_base.loc = Loc.new(:range => "~100")
    expect(code_base.loc).to be_a(Loc)
  end

end