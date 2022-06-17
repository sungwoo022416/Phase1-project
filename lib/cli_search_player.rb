def find_player_by_user
    loop do
        puts "Enther the player first name:"
        first = gets.chomp.upcase

        puts "Enther the player last name:"
        last = gets.chomp.upcase

        result = Player.find_player(first, last).inspect

        if result["first_name"] == nil || result["last_name"] == nil
            puts "Can't Find! Please Try Again".colorize(:red)
        else
            puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
            puts result.colorize(:yellow)
            break
        end
    end
end

def find_player_by_id
    loop do
        puts "Enter the player_id: "
        choice = gets.chomp.to_i

        result = Player.find_player_id(choice).inspect

        if result["id"] == nil
            puts "Can't Find! Please Try Again".colorize(:red)
        else
            puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
            puts result.colorize(:magenta)
            break
        end
    end
end

def player_choice
    choices = {By_name: 1, By_id: 2}
    case PROMPT.select("Please Select Option Here:", choices)
    when 1
        find_player_by_user
    when 2
        find_player_by_id
    end
end
