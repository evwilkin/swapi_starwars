require 'rest-client'

class CharactersController < ApplicationController

  def index
    response = RestClient.get 'http://swapi.co/api/people'
    @characters = JSON.parse(response)['results']
  end

  def show
  end

end
