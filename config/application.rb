require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Firekamp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # config.api_only = true
    # config.middleware.use ::ActionDispatch::Flash    

    config.after_initialize do
      response = HTTParty.get('https://potterapi-fedeperin.vercel.app/en/books')
      json_all = JSON.parse(response.body)
      json_all.map do |json_item|
        Book.find_or_create_by(json_item)
      end
    end

  end
end
