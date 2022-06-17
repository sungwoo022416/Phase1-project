require 'pry'
def find_team_by_user
    puts "Enter the team name (ex. 76ers): "
    choice = gets.chomp

    result = Team.find_team(choice).inspect
    puts result
end

def find_player_by_user
    puts "Enther the player first name:"
    first = gets.chomp

    puts "Enther the player last name:"
    last = gets.chomp

    result = Player.find_player(first, last).inspect
    puts result
end
