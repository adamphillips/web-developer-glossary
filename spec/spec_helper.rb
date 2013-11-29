require 'rack/test'
require 'capybara/rspec'

require File.expand_path '../../app.rb', __FILE__

Capybara.app = Sinatra::Application

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure { |c| c.include RSpecMixin }
