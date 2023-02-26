require_relative "boot"
require 'socket'
require 'timeout'
require 'yaml'

# hiera = YAML.load_file('config/database.yml')

# def port_open?(ip, port, seconds=1)
#   Timeout::timeout(seconds) do
#     begin
#       TCPSocket.new(ip, port).close
#       true
#     rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, SocketError
#       false
#     end
#   end
#   rescue Timeout::Error
#     false
# end

# HOST = '192.168.1.252'
# PORT = '5432'

# if port_open?(HOST, PORT)
#   $POSTGRES_REPLICA = :primary
# else
#   $POSTGRES_REPLICA = :primary_replica
# end

# Timeout::timeout(2) do
#     begin
#       TCPSocket.new('192.168.1.252', '5432').close
#       $x = :primary
#     rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, SocketError
#       $x = :primary_replica
#     end
# end

# puts $x
require "rails/all"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Educa
  class Application < Rails::Application
    config.i18n.available_locales = [:en,:pt]
    config.i18n.default_locale = :pt
    config.time_zone = 'Buenos Aires'
    #setup inicial
    config.title = 'SEMED SIS'
    config.load_defaults 7.0
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Flash
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Session::CookieStore, {:key=>"_educa_session"}
    # config.after_initialize do
    #   RailsAdmin::Config::Fields::Types::DatetimePicker::DefaultOptions = {
    #     format: 'd/m/Y H:i',
    #     enableTime: true,
    #     locale: 'pt-BR'
    #   }
    # end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
