class CharactersController < ApplicationController
  def index
    # instance variable
    @characters = Character.page(params[:page])
  end

  def show
    @character = Character.find(params[:id])
    # Link to other table
    @episode_ids = @character.episodes.pluck(:id)
  end
end
