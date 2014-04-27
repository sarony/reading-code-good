require 'spec_helper'

describe Faq do 

  it "can have a question" do 
    faq = Faq.new
    faq.question = "What is a code club?"
    expect(faq.question).to eq("What is a code club?")
  end

  it "can have an answer" do 
    faq = Faq.new
    faq.answer = "It's like a book club but for code!"
    expect(faq.answer).to eq("It's like a book club but for code!")
  end

end