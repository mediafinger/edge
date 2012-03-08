class ProfileRatingsController < ApplicationController
  def create

  end

  def new

  end

  def edit
    @profile_rating = ProfileRating.find_by_id(params[:id])
  end

  def index
    @profile_ratings = ProfileRating.all
  end

  def show
    @profile_rating = ProfileRating.find_by_id(params[:id])
  end

  def update
    @profile_rating = ProfileRating.find_by_id(params[:id])
  end

end