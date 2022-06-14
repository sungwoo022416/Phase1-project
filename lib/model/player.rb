class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    def full_name
        "#{first_name} #{last_name}"
    end
    # def list_contracts
    #     contracts.select {|player| player.name == self}
    # end
end