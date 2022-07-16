require "sinatra"
require "sinatra/content_for"
require "tilt/erubis"

require_all lib

configure do
  enable :sessions
  set :session_secret, "secret"
  set :erb, escape_html: true
end

before do
  @game = Game.new
end


