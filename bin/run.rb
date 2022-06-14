#!/usr/bin/env ruby
require_relative '../config/environment'

require 'rest-client'
require 'json'

data_teams
data_players

if welcome == "team"
    find_team(find_team_by_user)
elsif "player"
    find_player(find_player_by_user)
end
