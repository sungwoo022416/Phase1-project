require 'pry'
class Team < ActiveRecord::Base
    has_many :contracts
    has_many :players, through: :contracts

    def self.find_team(name)
        self.find_by! name: "#{name}"
    end

    def self.find_team_id(team_id)
        self.find_by! id: "#{team_id}"
    end
end