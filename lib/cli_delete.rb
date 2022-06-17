def delete_contract
    player = look_player_id
    team = look_team_id

    puts "🅳🅴🅻🅴🆃🅸🅽🅶 🅲🅾🅽🆃🆁🅰🅲🆃...".colorize(:magenta)
    
    PROMPT.keypress("", timeout: 5)
    puts "🅢🅤🅒🅒🅔🅢🅢🅕🅤🅛❗".colorize(:light_green)
    Contract.terminate_contract(player, team)
end