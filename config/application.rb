require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module StackoverFlow
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators.test_framework :rspec
    env_file = File.join(Rails.root, 'config', 'config.json')
    JSON.parse(File.read(env_file)).each do |key, value|
      ENV[key.to_s] = value
    end
  end
end
