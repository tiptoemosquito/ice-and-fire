class CLI

    def call
        API.get_data
        puts ""
        puts "             |^^^|          |^^^|          |^^^|       "
        puts "            _|___|_        _|___|_        _|___|_      "
        puts "           |       |      |       |      |       |     "
        puts "       ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^ "
        puts "      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|"
        puts "      |                                               |"
        puts "      |         Welcome Game of Thrones lover!        |" 
        puts "      |        Do you know your GOT characters?       |"
        puts "      |         Get to know a few of them now!        |"
        puts "      |                                               |"
        puts "      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|"
        puts "      |                                               |"
        puts "      |              To enter the realm,              |" 
        puts "      |             type 'hold the door'.             |"
        puts "      |                                               |"
        puts "      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|"
        puts "      |                                               |"
        puts "      |             To exit type 'exit'.              |"
        puts "      |                                               |"
        puts "      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|"
        puts "      |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|"
        puts ""
    
        characters = IAF.all

        menu

    end

    def menu
        
        input = gets.strip.downcase
         while input != "exit" do
            if input == "hold the door"
                character_list
            elsif input == "winter is coming"
                character_list
            else
                invalid_response
            end
            input = gets.strip.downcase
        end
        puts ""
        puts "                      Never forget what you are." 
        puts "                    The rest of the world will not."
        puts "        Wear it like armor, and it can never be used to hurt you."
        puts "                                             -Tyrion Lannister"
        puts "         _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  "
    end


    def character_list
        IAF.all.each.with_index do |character, index|
            puts "#{index + 1}. #{character.name}"
        end
        puts ""
        puts ""
        puts "          That's what I do: I drink and I know things..." 
        puts ""
        puts "              Enter a character's name for more info:"
        puts ""
        
        input = gets.strip.downcase

        character_selection(input)
    end

    def character_selection(characters)
        character = IAF.find_by_iaf(characters)
        character.each do |c|
        puts " Name:     #{c.name}   "
        puts " Gender:   #{c.gender} "
        puts " Culture:  #{c.culture}"
        puts " Aliases:  #{c.aliases}"
        puts " Title(s): #{c.titles} "
        puts ""
        puts "          ^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^ "
        puts "            To see another character, type 'winter is coming'.  "
        puts "" 
        puts "                         To exit type 'exit'."
        puts ""
        end   
    end

    def invalid_response
        puts ""
        puts "                      You know nothing, Jon Snow."
        puts "                                       -Ygritte"
        puts "                              Try again."
        menu
    end

end