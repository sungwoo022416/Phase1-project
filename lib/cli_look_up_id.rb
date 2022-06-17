def look_player_id
    puts "Look up the player you want"
    first = gets.chomp
    last = gets.chomp

    player = Player.find_player(first, last).id
    player
end

def look_team_id
    puts "Look up the team you want"
    choice = gets.chomp
    
    team = Team.find_team(choice).id
    team
end