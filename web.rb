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

  set :markdown,
    :layout_engine => :haml,
    :no_intra_emphasis => true,
    :fenced_code_blocks => true,
    :renderer => HTMLwithCodeRay.new

end

get '/' do
  markdown :index
end

get '/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/screen"
end

# This handles default routes for the markdown files in `views/`
# It should stay at the end of the file if it stays at all.
# Mostly added so that people who don't want to fuss with a Sinatra app can
# get right in and start making markdown files.

Dir[File.join(File.dirname(__FILE__), 'views', '**', '*.markdown')].each do |file|
  # partials
  next if File.basename(file, 'markdown')[0] == '_'

  #get everything after 'views'
  file = file.split('views').last.sub(/\.markdown$/,'')

  get file do
    markdown file.intern
  end
end

