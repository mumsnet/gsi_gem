class GoogleSigninGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__))
  def copy_initializer
    template 'omniauth.rb', 'config/initializers/omniauth.rb'
    puts "Install complete!"
  end
end
