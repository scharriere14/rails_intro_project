require "net/http"
require "json"

class ApplicationController < ActionController::Base
  def import_data_from_json
    characters_url = "https://rickandmortyapi.com/api/character/"
    episodes_url = "https://rickandmortyapi.com/api/episode"

    # Use Net::HTTP to make an HTTP GET request to the URL
    characters_uri = URI(characters_url)
    characters_response = Net::HTTP.get(characters_uri)

    # Parse the JSON response
    characters_data = JSON.parse(characters_response)
    # NOTE: Now 'characters_data' contains the parsed JSON data for characters, and you can work with it as needed

    # Repeat the process for episodes if needed
    episodes_uri = URI(episodes_url)
    episodes_response = Net::HTTP.get(episodes_uri)

    # Parse the JSON response for episodes
    episodes_data = JSON.parse(episodes_response)
    # NOTE: Now 'episodes_data' contains the parsed JSON data for episodes, and you can work with it as needed
  end
end
