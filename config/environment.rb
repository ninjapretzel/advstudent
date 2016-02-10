# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


require "action_controller/railtie"
require "action_mailer/railtie"
# require "active_resource/railtie" # Comment this line for Rails 4.0+
require "rails/test_unit/railtie"
require "sprockets/railtie" # Uncomment this line for Rails 3.1+