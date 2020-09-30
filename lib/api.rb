require 'pry'

class API

    def self.get_data
        url="https://anapioficeandfire.com/api/characters?page2=&pagesize=20"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        #binding.pry
        characters=JSON.parse(response)
        characters.each do |c|
            IAF.new(name: c["name"] , gender: c["gender"], culture: c["culture"], aliases: c["aliases"]) if c["name"] != nil
        end
    end
        #binding.pry

    def self.get_characters(characters)
        url="https://anapioficeandfire.com/api/characters?page2=&pagesize=20"
        uri-URI(url)
        response=Net::HTTP.get(uri)
        #binding.pry
        character_info=JSON.parse(response)
        character_info.each do |c|
        #binding.pry
        characters.name = character_info["name"]
        characters.gender = character_info["gender"]
        characters.culture = character_info["culture"]
        characters.aliases = character_info["aliases"]
        end

    end


end