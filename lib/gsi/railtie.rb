require 'rails'
class GSI::Railtie < Rails::Railtie
  initializer 'my_railtie.configure_rails_initializer' do |app|
    OmniAuth.config.logger = app.logger

    app.config.middleware.use OmniAuth::Builder do
      provider :google_oauth2, ENV['google_client_id'], ENV['google_client_secret'], { client_options: { ssl: { ca_file: Rails.root.join("cacert.pem").to_s }}}
    end
  end
end
