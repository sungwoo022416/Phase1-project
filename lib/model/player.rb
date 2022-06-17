require 'pry'
class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    Player.joins(:contracts)

    def Player.find_player(first, last)
        Player.find_by! first_name: "#{first}", last_name: "#{last}"
    end
    
    def find_team
        contracts.filter {|player| player.id == self}
    end
end