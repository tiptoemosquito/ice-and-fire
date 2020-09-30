class CLI

    def call
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
     
        API.get_data
        characters = IAF.all
        menu

    end

    def menu
        input = gets.strip.downcase
        
        if input == "hold the door"
            "characters"
            menu
        elsif input == "exit"
            goodbye
        else 
            invalid_response

        end
    end


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