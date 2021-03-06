require 'spec_helper'

describe AuthenticationsController do
  Fabricate(:authentication)
  Fabricate(:twitter)
  Fabricate(:openid)
  render_views
  login_user  # devise helper from controller macros

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "create action should render new template when model is invalid" do
    Authentication.any_instance.stub(:valid?).and_return(false)
    post :create
    response.should redirect_to(authentications_url)
  end

  it "create action should redirect when model is valid" do
    Authentication.any_instance.stub(:valid?).and_return(true)
    post :create
    response.should redirect_to(authentications_url)
  end

  it "destroy action should destroy model and redirect to index action" do
    authentication = Authentication.first
    controller.stub_chain(:current_user, :authentications, :find).and_return(authentication)
    
    delete :destroy, :id => authentication
    response.should redirect_to(authentications_url)
    Authentication.exists?(authentication.id).should be_false
  end
end
