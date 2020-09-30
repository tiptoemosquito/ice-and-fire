require 'pry'

class API

    def self.get_data
        url="https://anapioficeandfire.com/api/characters?page2=&pagesize=50"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        #binding.pry
        characters=JSON.parse(response)
        characters.each do |c|
            IAF.new(name: c["name"], gender: c["gender"], culture: c["culture"], aliases: c["aliases"]) if c["name"] != nil
        end
        #binding.pry

        
    end

end