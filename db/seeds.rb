require 'rest-client'
require 'json'
require 'pry'

TEAM_URL = "http://data.nba.net/10s//prod/v2/2021/teams.json"
PLAYER_URL = "https://data.nba.net/10s/prod/v1/2021/players.json"

def get_team_from_api
    team_response = RestClient.get(TEAM_URL)
    team_hash = JSON.parse(team_response)
end

def get_player_from_api
    player_response = RestClient.get(PLAYER_URL)
    player_hash = JSON.parse(player_response)
end

ROSTER = get_player_from_api["league"]["standard"]
TEAM_LIST = get_team_from_api["league"]["standard"]

def data_teams
    
    if !get_team_from_api.nil?
        TEAM_LIST.map do |team|
                if team["isNBAFranchise"] == true
                team["nickname"] = Team.create(id: "#{team["teamId"]}", 
                name: "#{team["nickname"]}", 
                city: "#{team["city"]}", 
                division: "#{team["divName"]}", 
                conference: "#{team["confName"]}")
            end
        end
    else
        puts "error seeding the teams"
    end
end

def data_players

    if !get_player_from_api.nil?
        ROSTER.map do |player|
            if player["isActive"] == true
            Player.create(id: "#{player["personId"]}", 
            first_name: "#{player["firstName"]}",
            last_name: "#{player["lastName"]}", 
            position: "#{player["teamSitesOnly"]["posFull"]}", 
            years_pro: "#{player["yearsPro"]}")
            end
        end
    else
        puts "error seeding the players"
    end
end

def data_contracts
    ROSTER.map do |contract|
        Contract.create(
            term_start: "#{contract["teams"].last["seasonStart"]}",
            term_end: "#{contract["teams"].last["seasonEnd"]}",
            player_id: "#{contract["personId"]}", 
            team_id: "#{contract["teamId"]}")
    end
end

data_teams
data_players
data_contracts
