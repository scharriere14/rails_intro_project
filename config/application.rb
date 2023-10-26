require 'kaminari'
require_relative 'boot'
require "rails/all"

Bundler.require(*Rails.groups)

module RailsIntroProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
  end
end
