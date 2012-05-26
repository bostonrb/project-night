require 'sinatra'
require 'rdiscount'
set :markdown, :layout_engine => :haml

get '/' do
  markdown :index
end
