require 'pry'

class API

    def self.get_data
        url="https://anapioficeandfire.com/api/characters?page=2&pagesize=25"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        #binding.pry
        characters=JSON.parse(response)
        characters.each do |c|
            if c["name"] != ""
                IAF.new(name: c["name"], gender: c["gender"], culture: c["culture"], aliases: c["aliases"]) if c["name"] != nil
            end
        end
    end
        #binding.pry


end