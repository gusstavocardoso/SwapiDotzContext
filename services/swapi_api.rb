module Swapi
    include HTTParty
    base_uri 'https://swapi.dev/api/'
    format :json
end
