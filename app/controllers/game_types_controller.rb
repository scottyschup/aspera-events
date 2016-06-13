class GameTypesController < ApplicationController
  def index
    @game_types = GameType.all
  end

  def show
    @game_type = GameType.find(params[:id])
    @new_user = User.new
  end

  def new
    @game_type = GameType.new
  end

  def create
    @game_type = GameType.create(game_type_params)
  end

  private

  def game_type_params
    params.require(:game_type).permit(:name)
  end
end
