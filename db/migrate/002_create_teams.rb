class CreateTeams < ActiveRecord::Migration[6.1]
    def change
        create_table :teams, id: false, primary_key: :team_id do |t|
            t.primary_key :id
            t.string      :name
            t.string      :city
            t.string      :division
            t.string      :conference
        end
    end
end
