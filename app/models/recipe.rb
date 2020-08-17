class Recipe
    include HTTParty
        
    base_uri 'http://www.recipepuppy.com/api'
    default_params onlyImages: 1

    format :json

    def self.for ( keyword = 'chocolate' )
        begin 
            get('', query: { q: keyword })['results']
        rescue Exception => e
            ['No results for this search term', e.message]
        end
    end
end
