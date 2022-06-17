#!/usr/bin/env ruby
require_relative '../config/environment'
require 'pry'

welcome
case option_select
when 1
    find_team_by_user
when 2
    find_player_by_user
when 3
    sign_contract 
when 4
    delete_contract
when 5
    modify_contract
end
