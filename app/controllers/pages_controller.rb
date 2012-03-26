class PagesController < ApplicationController
  def index
  end

  def login
     if current_user
      redirect_to home_path and return
    else
      redirect_to new_user_session_path and return
    end
  end

  def broadcast
  end
end
