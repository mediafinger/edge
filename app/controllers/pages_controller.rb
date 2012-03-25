require 'edge/events.rb'

class PagesController < ApplicationController
  def index
  end

  def events
    @events = Edge::Events.find_all
  end

  def events_in
    @events = Edge::Events.find_by_city(params[:city])
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

end
