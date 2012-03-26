class ProfileRatingsController < ApplicationController

  def index
    @profile_ratings = ProfileRating.all
  end

  def show
    @profile_rating = ProfileRating.find_by_id(params[:id])
    @profile = Profile.find_by_id(params[:profile_id])
    @user = User.find_by_id(@profile_rating.user_id)
  end
  
  def edit
    @profile_rating = ProfileRating.find_by_id(params[:id])
  end

  def update
    if params[:profile_id] == current_user.profile.id
      flash.now[:error] = t('.can_not_rate_yourself')
      render :action => 'show'
    end
    
    @profile_rating = ProfileRating.find_by_user_id_and_profile_id(current_user.id, params[:profile_id]) || 
      ProfileRating.create(:user_id => current_user.id, :profile_id => params[:profile_id], :rating => 0)

    if @profile_rating.update_attributes(:rating => params[:score])
      respond_to do |format|
        format.js do
          flash.now[:notice] = t('.save_succesful')
          render :nothing => true
        end
    
        format.html do
          raise params.inspect
          flash[:notice] = t('.save_succesful')
          redirect_to :action => :show, :id => @profile_rating
        end
      end
    
    else
      flash.now[:error] = t('.could_not_save')
      render :action => 'edit'
    end
  end
end