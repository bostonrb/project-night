require 'bundler'
ENV["RACK_ENV"] ||= "development"
Bundler.setup(:default, ENV["RACK_ENV"])

require 'sinatra'
require 'compass'
require 'redcarpet'
require 'haml'
require 'coderay'


configure do

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      code = language.nil? ? code : CodeRay.scan(code, language).div(:css => :class)
      "<code attr-language='#{language}'>#{code}</code>"
    end
  end

  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views/stylesheets'
  end

  set :scss, Compass.sass_engine_options
  set :markdown, :layout_engine => :haml
  set :markdown, :no_intra_emphasis => true
  set :markdown, :fenced_code_blocks => true
  set :markdown, :renderer => HTMLwithCodeRay.new

end


get '/' do
  markdown :index
end

get '/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/screen"
end
