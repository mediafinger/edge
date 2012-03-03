class AuthenticationsController < ApplicationController
  def index
    @authentications = current_user.authentications if current_user
  end

  # TODO handle case: user logged in, auth known (different user)
  def create
    auth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(auth['provider'], auth['uid'])
    if authentication
      puts 'auth known, user not logged in'                             # auth known, user not logged in
      flash[:notice] = t("devise.omniauth_callbacks.success", :kind => auth['provider'])
      sign_in_and_redirect(:user, authentication.user)
    elsif current_user
      puts 'auth not known, user logged in'                             # auth not known, user logged in
      current_user.apply_omniauth(auth)
      current_user.save
      redirect_to authentications_path, :notice => t('.authentication_successful')
    else
      puts 'auth not known, user not logged in'                         # auth not known, user not logged in
      user = User.new
      user.apply_omniauth(auth)
      if user.save
        puts 'new user'
        flash[:notice] = t('.sign_in_successful')
        sign_in_and_redirect(:user, user)
      else
        puts 'email missing'
        flash[:notice] = t('.email_needed', :provider => auth['provider'])
        session[:omniauth] = auth.except('extra')
        redirect_to new_user_registration_url
      end
    end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => t('.destroy_authentication_success')
  end

  # to stop devise from destroying all sessions, when trying to add OpenId and this appears:
  # WARNING: Can't verify CSRF token authenticity
  def handle_unverified_request
    true
  end

end

