class GameTypesController < ApplicationController
  before_action :set_game_type, only: [:destroy, :show]

  def create
    @game_type = GameType.create(game_type_params)
    redirect_to action: :index
  end

  def destroy
    @game_type.destroy
    redirect_to action: :index
  end

  def index
    @game_types = GameType.all
    @new_game_type = GameType.new
  end

  def new
    @game_type = GameType.new
  end

  def show
    @new_user = User.new
  end

  private

  def set_game_type
    @game_type = GameType.find(params[:id])
  end

  def game_type_params
    params.require(:game_type).permit(:name)
  end
end
