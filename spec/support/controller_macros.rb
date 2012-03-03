module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in Fabricate(:admin) 
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"]  = Devise.mappings[:user]
      @request.env["omniauth.auth"]   = Fabricate(:twitter)
      user = Fabricate(:user)
      sign_in user
    end
  end
end