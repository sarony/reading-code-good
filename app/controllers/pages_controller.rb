class PagesController < ApplicationController

  def index
    @faqs = Faq.all
    @code_bases = CodeBase.all
  end

  def faq
    @faqs = Faq.all
  end

  def code_base
    @code_bases = CodeBase.all
  end

end
