class EventsController < ApplicationController
  before_action :require_login, only: [:index]
  # before_action :require_host, only: [:new, :edit]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  
  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(event_params)
    # @event.user_id = current_user.id

    if @event.save
      redirect_to event_path(@event.id)
    else
      render 'events/new'
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to events_path
    else
      render '/event/edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    # if current_user.superadmin?
    #   redirect_to events_path
    # else 
    #   redirect_to event_path
    # end
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :location, :when, :cost, :status, :no_of_people, :private)
    end
    
    # def require_login
    #   unless signed_in? && (current_user.superadmin? || current_user.moderator?)
    #     flash[:error] = "You must be logged in to access this section"
    #     # redirect_to root_path
    #   end
    # end
        
end