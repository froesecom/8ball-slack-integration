class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter do
    @answers = YAML.load_file( File.join( Rails.root, 'config', 'answers.yml' ) )
  end
  protect_from_forgery with: :exception
end
