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

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

        Contract.update_contract(player,team).update(term_start: change)

    when 2
        puts "How do you want to change it?"
        change = gets.chomp.to_i

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

        Contract.update_contract(player,team).update(term_end: change)
    
    when 3
        puts "How do you want to change it?"
        puts "First name".colorize(:red)
        first = gets.chomp.upcase

        puts "Last name".colorize(:red)
        last = gets.chomp.upcase
        
        result = Player.find_player(first, last).id

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
        Contract.update_contract(player,team).update(player_id: result)

    when 4
        puts "How do you want to change it?"
        change = gets.chomp.upcase
        
        result = Team.find_team(change).id

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)

        Contract.update_contract(player,team).update(team_id: result)

    when 5
        puts "How do you want to change the starting date?"
        first = gets.chomp.to_i

        puts "How do you want to change the ending date?"
        second = gets.chomp.to_i

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
        Contract.update_contract(player,team).update(term_start: first, term_end: second)

    when 6
        puts "How do you want to change the player?"
        puts "First name".colorize(:red)
        first = gets.chomp.upcase

        puts "Last name".colorize(:red)
        last = gets.chomp.upcase
            
            
        p_name = Player.find_player(first, last).id

        puts "How do you want to change the team?"
        change = gets.chomp.upcase

        t_name = Team.find_team(change).id

        puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
        Contract.update_contract(player,team).update(player_id: p_name, team_id: t_name)

    when 7
        delete_contract
        sign_contract
    end
end