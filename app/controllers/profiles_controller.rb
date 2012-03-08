class ProfilesController < ApplicationController
  def edit
    @profile = current_user.profile if current_user
  end

  def show
    @profile = Profile.find_by_id(params[:id])
  end
end