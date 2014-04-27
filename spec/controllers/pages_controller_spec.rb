require 'spec_helper'

describe PagesController do

  describe "GET index" do
    let!(:faq){ FactoryGirl.create(:faq) }
    let!(:code_base){ FactoryGirl.create(:code_bases) }
    it "renders the :index template" do
      get :index
      response.should render_template :index
    end

    it "assigns a new instance of published with all the About" do
      get :index
      assigns(:faqs).first.should be_a(Faq)
    end

    it "assigns a new instance of published with all the About" do
      get :index
      assigns(:code_bases).first.should be_a(CodeBase)
    end
  end

  describe "GET faq" do
    let!(:faq){ FactoryGirl.create(:faq) }
    let!(:code_base){ FactoryGirl.create(:code_bases) }
    it "renders the :faq template" do
      get :faq
      response.should render_template :faq
    end

    it "assigns a new instance of published with all the About" do
      get :faq
      assigns(:faqs).first.should be_a(Faq)
    end
  end

  describe "GET code_base" do
    let!(:faq){ FactoryGirl.create(:faq) }
    let!(:code_base){ FactoryGirl.create(:code_bases) }
    it "renders the :code_base template" do
      get :code_base
      response.should render_template :code_base
    end

    it "assigns a new instance of published with all the About" do
      get :code_base
      assigns(:code_bases).first.should be_a(CodeBase)
    end
  end

end
