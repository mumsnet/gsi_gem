module GoogleSignin
  class << self
    require 'omniauth-google-oauth2'

    def authenticate_user(request)
      request.env['omniauth.auth']
    end

    def create_session(session, user_id)
      session = user_id
    end

    def destory_session(session)
      session = nil
    end
  end
end
