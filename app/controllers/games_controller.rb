require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @words = params[:word].split("")
    @letters = params[:letters]
    url = "https://wagon-dictionary.herokuapp.com/autocomplete/#{word}"
    word_serialized = open(url).read
    word = JSON.parse(word_serialized)
  end
end
