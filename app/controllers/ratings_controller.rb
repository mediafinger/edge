class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find_by_id(params[:id])
    @event = Event.find_by_id(params[:event_id])
    @user = User.find_by_id(@rating.user_id)
  end
  
  def edit
    @rating = Rating.find_by_id(params[:id])
  end

  def update
    @rating = Rating.find_by_user_id_and_event_id(current_user.id, params[:event_id]) || 
      Rating.create(:user_id => current_user.id, :event_id => params[:event_id], :rating => 0)

    if @rating.update_attributes(:rating => params[:score])
      respond_to do |format|
        format.js do
          flash.now[:notice] = t('.save_succesful')
          render :nothing => true
        end
    
        format.html do
          raise params.inspect
          flash[:notice] = t('.save_succesful')
          redirect_to :action => :show, :id => @rating
        end
      end
    
    else
      flash.now[:error] = t('.could_not_save')
      render :action => 'edit'
    end
  end
end