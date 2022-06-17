require 'pry'
class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    Player.joins(:contracts)

    def Player.find_player(first, last)
        Player.find_by first_name: "#{first}", last_name: "#{last}"
    end

    def self.find_player_id(player_id)
        self.find_by id: "#{player_id}"
    end
    
end