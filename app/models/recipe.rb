class Recipe
  include HTTParty

  base_uri "http://www.food2fork.com/api" 
  default_params key: '38a6bccce5ca111197b7b2fd50142388'
  format :json

  def self.for term
    get("/search", query: { q: term})["recipes"]
  end
end
