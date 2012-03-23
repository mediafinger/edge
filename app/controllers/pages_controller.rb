class PagesController < ApplicationController
  def index
  end

  def events
    @events = Edge::Event.get_events
  end

  def events_in
    @events_in = Edge::Event.get_events_in(params[:country], params[:year])
  end

  def local_events
    @local_events = Edge::Event.get_local_events(params[:city])
  end

  def events_for
    @events_for = Edge::Event.get_events_local()    # Fachpublikum ...
  end

end
