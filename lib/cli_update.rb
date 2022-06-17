require "tty-prompt"

def modify_contract
    
    player = look_player_id
    team = look_team_id

    puts "What would you like to motify on the contract?"

    choices = {Start_date: 1, End_date: 2, Player_on_contract: 3, Team_on_contract: 4, all_dates: 5, player_and_team: 6, everything: 7}
    case PROMPT.select("Please Select Option Here:", choices)
    when 1
        puts "How do you want to change it?"
        change = gets.chomp.to_i
        Contract.update_contract(player,team).update(term_start: change)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

    when 2
        puts "How do you want to change it?"
        change = gets.chomp.to_i
        Contract.update_contract(player,team).update(term_end: change)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    
    when 3
        puts "How do you want to change it?"
        
        first = gets.chomp.upcase
        last = gets.chomp.upcase
        
        result = Player.find_player(first, last).id
        Contract.update_contract(player,team).update(player_id: result)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

    when 4
        puts "How do you want to change it?"
        change = gets.chomp.upcase
        
        result = Team.find_team(change).id
        Contract.update_contract(player,team).update(team_id: result)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

    when 5
        puts "How do you want to change the starting date?"
        first = gets.chomp.to_i

        puts "How do you want to change the ending date?"
        second = gets.chomp.to_i

        Contract.update_contract(player,team).update(term_start: first, term_end: second)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

    when 6
        puts "How do you want to change the player?"
        first = gets.chomp.upcase
        last = gets.chomp.upcase
            
        p_name = Player.find_player(first, last).id

        puts "How do you want to change the team?"
        change = gets.chomp.upcase

        t_name = Team.find_team(change).id

        Contract.update_contract(player,team).update(player_id: p_name, team_id: t_name)

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

    when 7
        delete_contract
        sign_contract
    end
end