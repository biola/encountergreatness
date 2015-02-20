require 'sinatra/base'
require 'slim'

module EncounterGreatness
  class App < Sinatra::Base
    Slim::Engine.set_options pretty: true

    get '/' do
      slim :homepage
    end

    not_found do
      status 404
      slim :not_found
    end
  end
end
