class CreateTeams < ActiveRecord::Migration[5.2]
    def change
        create_table :teams do |t|
            t.string  :name
            t.string  :city
            t.string  :division
            t.string  :conference
            t.integer :team_number
        end
    end
end
