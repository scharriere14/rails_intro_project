class CharactersController < ApplicationController
  def index
    # instance variable
    @characters = Character.all # right now only calls db 1 time
  end

  def show
    @character = Character.find(params[:id])
  end
end
