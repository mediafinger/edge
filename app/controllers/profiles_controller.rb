class ProfilesController < ApplicationController
  def show
    @profile = current_user.profile || "No profile created"
  end
end