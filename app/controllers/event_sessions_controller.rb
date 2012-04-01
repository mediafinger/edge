require 'edge/events.rb'

class EventSessionsController < ApplicationController
  def index
    @sessions = Edge::Events.find_sessions(params[:event_id])
  end

  def show
    @session = Edge::Events.find_session(params[:event_id], params[:id])
  end

end
