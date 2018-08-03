module GoogleSignin
  class << self
    require 'omniauth-google-oauth2'

    def set_omniauth(client_id:, client_secret:)
      provider :google_oauth2, client_id, client_secret, { client_options: { ssl: { ca_file: Rails.root.join("cacert.pem").to_s }}}
    end

    def authenticate_user(request)
      request.env['omniauth.auth']
    end

    def create_session(session, user_id)
      session[:user_id] = user_id
    end

    def destory_session(session)
      session[:user_id] = nil
    end
  end
end
