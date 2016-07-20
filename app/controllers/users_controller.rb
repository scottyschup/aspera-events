class UsersController < ApplicationController
  before_action :set_user, :set_event

  def create
    if @user.update(user_params)
      @user.events << @event unless @user.events.include?(@event)
      if @user.save
        flash[:notice] = ["Successsss!"]
      else
        flash[:error] = @user.errors.full_messages
      end
    else
      flash[:error] = @user.errors.full_messages
    end
    redirect_to action: :show, controller: :events, id: @event.id
  end

  def destroy
    redirect_to action: :show, controller: :events, id: @event.id
    @user.events.delete(@event)
  end

  private

  def set_event
    @event = Event.find(params[:user][:event_id])
  end

  def set_user
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.find_or_initialize_by(email: user_params[:email])
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
