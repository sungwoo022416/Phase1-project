class CreateContracts < ActiveRecord::Migration[5.2]
    def change
        create_table :contracts do |t|
            t.string  :name
            t.integer :player_id
            t.integer :team_id
        end
    end
end