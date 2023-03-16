class ChuckController < ApplicationController
  # #HOST = 'https://api.chucknorris.io'.freeze
  # RANDOM = '/jokes/random'.freeze
  # CATEGORY = '/jokes/categories'.freeze
  # SEARCH = '/jokes/search?query='.freeze
  # BY_CATEGORY = '/jokes/random?category='.freeze

  def random
    jokes = Curl.get(File.join(HOST, RANDOM))

    render json: JSON(jokes.body)['value']
  end

  def category
    categories = Curl.get(File.join(HOST, CATEGORY))

    render json: JSON(categories.body)
  end

  def search
    query = params[:query]
    searching = Curl.get(File.join(HOST, SEARCH + query))

    render json: JSON(searching.body)
  end

  private

  def jokes_by_categories
    categ = params[:categ]
    jokes_by_categories = Curl.get(File.join(HOST, BY_CATEGORY + categ))

    render json: JSON(jokes_by_categories.body)['value']
  end
end