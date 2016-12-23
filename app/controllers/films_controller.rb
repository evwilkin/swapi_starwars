require 'rest-client'

class FilmsController < ApplicationController

  def index
    response = RestClient.get 'http://swapi.co/api/films'
    @films = JSON.parse(response)['results']
  end

  def show

  end

  

end
