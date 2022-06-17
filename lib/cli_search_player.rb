def find_player_by_user
    puts "Enther the player first name:"
    first = gets.chomp.upcase

    puts "Enther the player last name:"
    last = gets.chomp.upcase

    result = Player.find_player(first, last).inspect
    
    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    puts result.colorize(:yellow)
end

def find_player_by_id
    puts "Enter the team_id: "
    choice = gets.chomp.to_i

    result = Player.find_player_id(choice).inspect
    
    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    puts result.colorize(:magenta)
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
