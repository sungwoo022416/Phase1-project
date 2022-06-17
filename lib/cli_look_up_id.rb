def look_player_id
    puts "Look up the player you want"
    first = gets.chomp.upcase
    last = gets.chomp.upcase

    player = Player.find_player(first, last).id
    player

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
end

def look_team_id
    puts "Look up the team you want"
    choice = gets.chomp.to_i
    
    team = Team.find_team(choice).id
    team

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
end