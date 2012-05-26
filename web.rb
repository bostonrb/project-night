require 'bundler'
ENV["RACK_ENV"] ||= "development"
Bundler.setup(:default, ENV["RACK_ENV"])

require 'sinatra'
require 'compass'
require 'rdiscount'
require 'haml'

configure do


  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views/stylesheets'
  end

  set :scss, Compass.sass_engine_options
  set :markdown, :layout_engine => :haml

end


get '/' do
  markdown :index
end

get '/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/screen"
end
