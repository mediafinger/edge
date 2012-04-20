require 'spec_helper'

describe PagesController do
  login_user

  context "when logged in" do
    describe "GET index" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  end
end

describe PagesController do
  logout_user
  
  context "when not logged in" do
    describe "GET index" do
      it "redirects to sign_in" do
        get 'index'
        response.should redirect_to(new_user_session_path)
      end
    end
  end
end

