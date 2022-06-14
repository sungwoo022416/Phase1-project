#!/usr/bin/env ruby
require_relative '../config/environment'
require 'rest-client'
require 'json'

team = find_team_by_user
find_team(team)

