# Staging configuration is identical to production, with some overrides
# for hostname, etc.

require_relative './production'

NinefoldExample::Application.configure do

  config.action_mailer.default_url_options = {
    host: 'staging.ninefold-example.com',
    protocol: 'https'
  }
end
