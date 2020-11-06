class EventController < ApplicationController
  
  def new
    @event = Event.new
  end

  def show
    @id = params[:id]
    @event = Event.find_by_id(params[:id])
  end

  def index
    @event = Event.all
  end
 
  def create
      @event = Event.new
      @event.duration = params[:duration]
      @event.title = params[:title]
      @event.price = params[:price]
      @event.location = params[:location]
      @event.start_date = params[:start_date]
      @event.user = current_user
    if
      @event.save
      redirect_to event_index_path
    else
      redirect_to new_event_path
    end
    
  end

  def update
  end

  def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to event_index_path
  end

  def edit
  end
end
















































































































































































































































