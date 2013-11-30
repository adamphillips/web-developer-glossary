require 'rubygems'
require 'sinatra'
require 'sinatra/support'

register Sinatra::CssSupport
register Sinatra::JsSupport

set :haml, format: :html5, layout_engine: :erb

serve_css '/css', from: './assets/styles'
serve_js '/js', from: './assets/js'

get '/' do
  erb :index
end

get '/glossary/terms/:term' do
  term = params[:term]
  haml :term, locals: {term: term}
end
