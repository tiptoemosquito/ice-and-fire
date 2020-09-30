class CLI

    def call
        API.get_data
        puts ""
        puts "      |^^^|          |^^^|          |^^^|      "
        puts "     _|___|_        _|___|_        _|___|_     "
        puts "    |       |      |       |      |       |    "
        puts "^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^"
        puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
        puts ""
        puts "         Welcome Game of Thrones lover!        " 
        puts "       Missing your favorite characters?       "
        puts "            Well you're in luck!               "
        puts ""
        puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
        puts ""
        puts "   To see a list of your favorite characters,  " 
        puts "             type 'hold the door'.             "
        puts ""
        puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
        puts ""
        puts "             To exit type 'exit'.              "
        puts ""
        puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
        puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
        puts ""
    
        characters = IAF.all

        menu

    end

    def menu
        input = gets.strip.downcase
        
        if input == "hold the door"
            character_list
            menu
        elsif input == "exit"
            goodbye
        elsif input == "winter is coming"
            character_list
            menu
        else 
            invalid_response
        end
    end

    def character_list
        IAF.all.each.with_index do |character, index|
            puts "#{index + 1}. #{character.name}"
        end
        puts ""
        puts ""
        puts "What character would you like more info on:"
        puts "That's what I do: I drink and I know things..." 
        input = gets.strip.downcase

        character_selection(input)
    end

    def character_selection(characters)
        character = IAF.find_by_iaf(characters)
        character.each do |c|
        puts " Name: #{c.name}"
        puts " Gender: #{c.gender}"
        puts " Culture: #{c.culture}"
        puts " Aliases: #{c.aliases}"
        puts ""
        puts "To see another character, type 'winter is coming'."
        puts "Type 'exit' to exit."
        end
        
    end

    # def recurring_list
    #     input = gets.strip.downcase
       
    #     if input == "#{c.name}"
    #         puts " Type another character's name or 'exit'."
    #     elsif input == "exit"
    #         goodbye
    #     else 
    #         invalid_response
    #     end

    #     character_selection(input)
    # end


    def goodbye
        puts "Never forget what you are." 
        puts "The rest of the world will not."
        puts "Wear it like armor, and it can never be used to hurt you."
        puts "                                 -Tyrion Lannister"
    end

    def invalid_response
        puts "You know nothing, Jon Snow."
        puts "                -Ygritte"
        puts "Try again."
        menu
    end

end