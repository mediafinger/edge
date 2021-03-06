class ProfilesController < ApplicationController
  def edit
    @profile = current_user.profile if current_user
  end

  def index
    @profiles = Profile.all
    if params[:avg_rating_true] && params[:avg_rating_true] == "true"
      @avg_rating_true = true
    else
      @avg_rating_true = false
    end
  end

  def show
    @profile = Profile.find_by_id(params[:id])
  end

  def update
    @profile = Profile.find_by_id(params[:id])
    @profile.attributes = params[:profile]
    if @profile.changed? && @profile.save
      redirect_to profile_path, :notice => t('.changes_successful')
    else
      redirect_to edit_profile_path, :alert => t('.no_changes_saved')
    end
  end

end
