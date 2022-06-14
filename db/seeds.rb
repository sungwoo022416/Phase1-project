require 'rest-client'
require 'json'


BASE_URL = "http://data.nba.net/10s/prod/v1/today.json"
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
TEAM_LIST = list = get_team_from_api["league"]["standard"]

def data_teams
    if !get_team_from_api.nil?
            TEAM_LIST.map do |team|
                if team["isNBAFranchise"] == true
                Team.create(name: "#{team["fullName"]}", city: "#{team["city"]}", division: "#{team["divName"]}", 
                conference: "#{team["confName"]}", team_number: "#{team["teamId"]}")
            end
        end
    else
        puts "error seeding the teams"
    end
end


# def find_team(team_name)
#     found_team = get_team_from_api["league"]["vegas"].detect {|team| team["nickname"].downcase == team_name}
    
#         if found_team.nil?
#             raise "Can't Find the Team!"
#         else
#             puts "Yes! We found the #{found_team["fullName"]}"
#         end
# end


def data_players

    if !get_player_from_api.nil?
        ROSTER.map do |player|
            if player["isActive"] == true
            Player.create(name: "#{player["temporaryDisplayName"]}", position: "#{player["teamSitesOnly"]["posFull"]}", 
            years_pro: "#{player["yearsPro"]}", team: "#{player["teamId"]}")
            end
        end
    else
        puts "error seeding the players"
    end
end

    
# def find_player(player_name)
#     found_player = get_player_from_api["league"]["standard"].detect {|player| player["temporaryDisplayName"].downcase == player_name}
#     found_player_id = found_player["personId"]
#         if found_player.nil?
#             raise "Can't Find the Player!"
#         else
#             puts "Yes! We found the #{found_player["temporaryDisplayName"]}"
#         end
# end




