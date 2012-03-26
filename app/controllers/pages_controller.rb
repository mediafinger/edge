require 'edge/events.rb'

class PagesController < ApplicationController
  def index
  end

  def events
    @events = Edge::Events.find_all
  end

  def events_in
    if params[:city]
      @events = Edge::Events.find_by_city(params[:city])
    elsif params[:country]
      @events = Edge::Events.find_by_country(params[:country])
    end
    render :events
  end

  def events_of
    @events = Edge::Events.find_by_country_and_year(params[:country], params[:year])
    render :events
  end

  def events_for
    @events = Edge::Events.find_by_audience()    # Fachpublikum ...
    render :events
  end

  def broadcast
  end

end
