require "application_controller"

# db/seeds/seed_characters_and_episodes.rb
Character.delete_all
Episode.delete_all

# Use the parsed JSON data from the ApplicationController
characters_data = ApplicationController.new.import_data_from_json[:characters_data]
episodes_data = ApplicationController.new.import_data_from_json[:episodes_data]

# Seed the 'characters' table
characters_data.each do |character_data|
  Character.create(
    id:      character_data["id"],
    name:    character_data["name"], # Map 'name' from JSON to 'name' column
    status:  character_data["status"], # Map 'status' from JSON to 'status' column
    species: character_data["species"], # Map 'species' from JSON to 'species' column
    gender:  character_data["gender"], # Map 'gender' from JSON to 'species' column
    origin:  character_data["origin"]["name"], # Map 'image' from JSON to 'species' column
    image:   character_data["image"] # Map 'image' from JSON to 'species' column
  )
end

# Seed the 'episodes' table
episodes_data.each do |episode_data|
  # episode_number = episode_data["episode"].split("E").last

  episode = Episode.create(
    id:               episode_data["id"],
    title:            episode_data["name"],
    air_date:         episode_data["air_date"],
    episode_number:   episode_data["episode"],
    chars_in_ep_http: episode_data["characters"]
  )

  # Make the link between tables
  #  iterates through an array of character URLs associated with the episode's data.
  episode_data["characters"].each do |character_url|
    character_id = character_url.split("/").last
    character = Character.find_by(id: character_id)
    episode.characters << character if character
  end
end
