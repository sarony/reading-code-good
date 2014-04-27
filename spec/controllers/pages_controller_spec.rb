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

end
