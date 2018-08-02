Gem::Specification.new do |s|
  s.name = 'google_signin'
  s.version = '1.0.0'
  s.date = '2018-8-2'
  s.summary = 'Authentication and Sign in with Google'
  s.description = 'Sends a user to the google login and returns a user object of who has moved in'
  s.authors = ['Dan Buckle']
  s.email = ['']
  s.files = ['lib/google_signin.rb']
  s.require_paths = ['lib']
  s.add_dependency 'omniauth-google-oauth2'
  s.homepage = 'https://github.com/buckled0'
end