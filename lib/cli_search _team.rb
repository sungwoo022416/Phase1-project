require 'pry'
def find_team_by_user
    puts "Enter the team name (ex. 76ers): "
    choice = gets.chomp.upcase

    result = Team.find_team(choice).inspect
    
    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    puts result.colorize(:yellow)
    
end

def find_team_by_id
    puts "Enter the team_id: "
    choice = gets.chomp.to_i

    result = Team.find_team_id(choice).inspect
    
    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    puts result.colorize(:magenta)
end

def team_choice
    choices = {By_name: 1, By_id: 2}
    case PROMPT.select("Please Select Option Here:", choices)
    when 1
        find_team_by_user
    when 2
        find_team_by_id
    end
end