class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])

    # to extract the charicters from the url
    character_urls_json = @episode.chars_in_ep_http
    character_urls = JSON.parse(character_urls_json) # Parse the JSON string to an array
    @character_names = fetch_character_names(character_urls)
    @character_ids = fetch_character_ids(character_urls)
  end

  private

  def fetch_character_names(character_urls)
    character_ids = character_urls.map { |url| url.split("/").last.to_i }
    characters = Character.where(id: character_ids)
    characters.pluck(:name)
  end

  def fetch_character_ids(character_urls)
    character_ids = character_urls.map { |url| url.split("/").last.to_i }
    puts "Character URLs: #{character_urls}"
    puts "Character IDs: #{character_ids}"
    character_ids
  end
end
