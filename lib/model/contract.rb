require 'pry'
class Contract < ActiveRecord::Base
    belongs_to :player
    belongs_to :team

    def self.create_contract(t_start, t_end, player_id, team_id)
        Contract.find_or_create_by!(term_start: t_start, term_end: t_end, player_id: player_id, team_id: team_id)
    end


    def self.update_contract(player_id, team_id)
        Contract.where(player_id: player_id, team_id: team_id)
    end

    def self.terminate_contract(player_id, team_id)
        Contract.update_contract(player_id, team_id).destroy_all
    end
end