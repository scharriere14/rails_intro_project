# common place to put utility methods that may be used across multiple controllers.
# base/parent controller
# Common tasks include user authentication, session management, and other application-wide logic.
require "net/http"
require "json"

class ApplicationController < ActionController::Base
  # utility method that can be used to fetch and process JSON data.
  def import_data_from_json
    characters_url = "https://rickandmortyapi.com/api/character/"
    episodes_url = "https://rickandmortyapi.com/api/episode"

    # Use Net::HTTP to make an HTTP GET request to the URL
    characters_uri = URI(characters_url)
    characters_response = Net::HTTP.get(characters_uri)
    puts "Characters Response: #{characters_response}" # Debugging line

    # Parse the JSON response for characters
    characters_data = JSON.parse(characters_response)
    puts "Parsed Characters Data: #{characters_data}" # Debugging line

    # Repeat the process for episodes
    episodes_uri = URI(episodes_url)
    episodes_response = Net::HTTP.get(episodes_uri)
    puts "Episodes Response: #{episodes_response}" # Debugging line

    # Parse the JSON response for episodes
    episodes_data = JSON.parse(episodes_response)
    puts "Parsed Episodes Data: #{episodes_data}" # Debugging line

    # Return the parsed data as a array
    { characters_data: characters_data["results"], episodes_data: episodes_data["results"] }
  end
end
