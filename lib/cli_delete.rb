def delete_contract
    player = look_player_id
    team = look_team_id

    Contract.terminate_contract(player, team)
    puts "Complete!"
end