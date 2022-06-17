require 'pry'
def look_player_id
    puts "Look up the player you want"
    
    puts "First name".colorize(:red)    
    first = gets.chomp.upcase
    
    puts "Last name".colorize(:red)
    last = gets.chomp.upcase

        player = Player.find_player(first, last).id
        player

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
end

def look_team_id
    puts "Look up the team you want"
    choice = gets.chomp.upcase
    team = Team.find_team(choice).id
    team

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
end