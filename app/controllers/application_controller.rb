# common place to put utility methods that may be used across multiple controllers.
# base/parent controller
# Common tasks include user authentication, session management, and other application-wide logic.
require "net/http"
require "json"

class ApplicationController < ActionController::Base
  def import_data_from_json
    # Character code
    characters_url = "https://rickandmortyapi.com/api/character/"
    characters_data = []

    # Load data from first 20 pages
    (1..20).each do |page|
      page_url = "#{characters_url}?page=#{page}"
      page_data = fetch_character_data(page_url)

      characters_data.concat(page_data)
    end

    # Episode code
    episodes_url = "https://rickandmortyapi.com/api/episode"
    episodes_data = []

    # Load data from first pages
    (1..3).each do |page|
      page_url = "#{episodes_url}?page=#{page}"
      page_data = fetch_episode_data(page_url)

      episodes_data.concat(page_data)
    end

    # Return the parsed data as a hash
    { characters_data:, episodes_data: }
  end

  private

  def fetch_character_data(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    #     # Parse the JSON response for characters
    JSON.parse(response)["results"]
  end

  def fetch_episode_data(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)["results"]
  end
end
