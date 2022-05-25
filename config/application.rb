# frozen_string_literal: true

require_relative "boot"

require "rails/all"

ENV["SEMANTIC_LOGGER_APP"] ||= "wawasit"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wawasit
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.eager_load_paths << Rails.root.join("extras")

    config.active_record.schema_format = :sql

    config.time_zone = "UTC"
  end
end
