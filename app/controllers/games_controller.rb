require "open-uri"
require "json"

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    @grid = params[:grid]

    @url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @serialized = URI.open(@url).read
    @true_word = JSON.parse(@serialized)
  end

end
