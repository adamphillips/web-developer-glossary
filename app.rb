require 'rubygems'

require 'sinatra'
require 'sinatra/support'

# Adds the classes folder to the load path
$: << 'classes'
$: << 'content'

require 'glossary'

require 'content'

register Sinatra::CssSupport
register Sinatra::JsSupport

set :haml, format: :html5, layout_engine: :erb

serve_css '/css', from: './assets/styles'
serve_js '/js', from: './assets/js'

get '/' do
  erb :index
end

get '/glossary/terms/:term' do
  term = Glossary.terms[params[:term]]
  haml :term, locals: {term: term}
end
