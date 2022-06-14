require 'rest-client'
require 'json'


BASE_URL = "http://data.nba.net/10s/prod/v1/today.json"
TEAM_URL = "http://data.nba.net/10s//prod/v2/2021/teams.json"

def get_team_from_api
    team_response = RestClient.get(TEAM_URL)
    team_hash = JSON.parse(team_response)
end
    
def find_team(team_name)
    found_team = get_team_from_api["league"]["vegas"].detect {|team| team["nickname"].upcase == team_name}
    
        if found_team.nil?
            raise "Can't Find the Team!"
        else
            puts "Yes! We found the #{found_team["fullName"]}"
        end
end

