def welcome
    puts "Welcome"
    puts "Please Select Option Here: "
    puts "1: Find Team"
    puts "2: Find Player"
    gets.chomp.downcase
end

def find_team_by_user
    puts "Enter the team name (ex. Sixers): "
    gets.chomp.downcase
end

def find_player_by_user
    puts "Enther the player full name (ex. last, first): "
    gets.chomp.downcase
end

