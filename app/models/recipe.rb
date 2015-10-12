class Recipe
  include HTTParty

  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api" 
  default_params key: '38a6bccce5ca111197b7b2fd50142388'
  format :json

  def self.for term
    get("/search", query: { q: term})["recipes"]
  end
end
