def delete_contract
    player = look_player_id
    team = look_team_id

    puts "π³π΄π»π΄ππΈπ½πΆ π²πΎπ½πππ°π²π...".colorize(:magenta)
    
    PROMPT.keypress("", timeout: 5)
    puts "π’π€ππππ’π’ππ€πβ".colorize(:light_green)
    Contract.terminate_contract(player, team)
end