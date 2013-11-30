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

get '/glossary/terms' do
  haml :terms
end

get '/glossary/terms/:term' do
  t = params[:term]
  if Glossary.term_defined? t
    term = Glossary.terms[t]
    haml :term, locals: {term: term}
  else
    halt 404, 'Term not defined'
  end
end
