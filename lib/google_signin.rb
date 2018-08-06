module GoogleSignin
  class << self
    require 'gsi/railtie' if defined? Rails
    require 'omniauth-google-oauth2'

    def authenticate_user(request)
      request.env['omniauth.auth']
    end

    def create_session(user_id)
      session[:user_id] = user_id
    end

    def destory_session
      session[:user_id] = nil
    end
  end
end
