class CreateTeams < ActiveRecord::Migration[5.2]
    def change
        create_table :teams do |t|
            t.string :name
            t.integer :location
            t.integer :roster
        end
    end
end
