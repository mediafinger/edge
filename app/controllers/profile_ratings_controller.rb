class ProfileRatingsController < ApplicationController

  def new
    @profile_rating = ProfileRating.new
  end

  def create
    attributes = { :user_id => current_user.id, :profile_id => params[:profile_id], :rating => params[:score] }
    @profile_rating = ProfileRating.new(attributes)

    if @profile_rating.save
      flash[:notice] = t('.save_succesful')
      redirect_to profile_rating_path(@profile_rating.profile_id, @profile_rating.id)
    else
      flash.now[:error] = t('.could_not_save')
      render :action => :new
    end
  end

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
    @profile_rating = ProfileRating.find_by_id(params[:id])
    
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