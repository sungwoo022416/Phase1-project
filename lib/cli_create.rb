def sign_contract
    puts "Let's sign a contract!"
    
    puts "When do you want to start it?: "
    t_start = gets.chomp.to_i

    puts "Whend you want to end it?: "
    t_end = gets.chomp.to_i

    puts "Look up the player you want to sign contract"
    first = gets.chomp.upcase
    last = gets.chomp.upcase
    
    player = Player.find_player(first, last).id

    puts "Look up the team you want to sign contract"
    choice = gets.chomp.upcase

    team = Team.find_team(choice).id
    
    Contract.create_contract(t_start, t_end, player, team)

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
end