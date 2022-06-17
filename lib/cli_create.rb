def sign_contract
    puts "
    ██████████████████████████████████████████████████████████████████▀█████████████████████████▀█
    █─▄▄▄─█─▄▄─█▄─▀█▄─▄█─▄─▄─█▄─▄▄▀██▀▄─██─▄▄▄─█─▄─▄─███─▄▄▄▄█▄─▄█─▄▄▄▄█▄─▀█▄─▄█▄─▄█▄─▀█▄─▄█─▄▄▄▄█
    █─███▀█─██─██─█▄▀─████─████─▄─▄██─▀─██─███▀███─█████▄▄▄▄─██─██─██▄─██─█▄▀─███─███─█▄▀─██─██▄─█
    ▀▄▄▄▄▄▀▄▄▄▄▀▄▄▄▀▀▄▄▀▀▄▄▄▀▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀".colorize(:cyan)
        
    puts "Term start date?: "
    t_start = gets.chomp.to_i

    PROMPT.keypress("year_#{t_start} is registered".upcase, timeout: 5)
    
    puts "Term end date?: "
    t_end = gets.chomp.to_i
        
    
    PROMPT.keypress("year_#{t_end} is registered".upcase, timeout: 5)

    puts "Look up the player you want to sign contract: "
    puts "First name".colorize(:red)
    first = gets.chomp.upcase
    puts "Last name".colorize(:red)
    last = gets.chomp.upcase

    player = Player.find_player(first, last).id

    PROMPT.keypress("Player_#{first}_#{last} is registered".upcase, timeout: 5)

    puts "Look up the team you want to sign contract"
    choice = gets.chomp.upcase

    team = Team.find_team(choice).id
    
    PROMPT.keypress("Team_#{choice} is registered".upcase, timeout: 5)
    
    puts "🅵🅾🆁🅼🆄🅻🅰🆃🅸🅽🅶 🅲🅾🅽🆃🆁🅰🅲🆃...".colorize(:magenta)
    
    PROMPT.keypress("", timeout: 5)

    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    
    puts "#{Contract.create_contract(t_start, t_end, player, team)}".colorize(:blue)
end