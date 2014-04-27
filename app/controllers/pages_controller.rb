class PagesController < ApplicationController

  def index
    @faqs = Faq.all
    @code_bases = CodeBase.all
  end

end
