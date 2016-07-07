class UsersController < ApplicationController
  before_action :set_user

  def create
    if @user.update(user_params)
      @event = Event.find(params[:user][:event_id])
      @user.events << @event unless @user.events.include?(@event)
      @user.save
      flash[:notice] = ["Successsss!"]
      redirect_to action: :show, controller: :events, id: @event.id
    else
      flash[:error] = @user.errors.full_messages
      render :new
    end
  end

  def destroy
    @user.events.delete(Event.find(params[:event_id]))
    redirect_to action: :show, controller: :events, id: params[:event_id]
  end

  private

  def set_user
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.where(email: user_params[:email]).first || User.new
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
