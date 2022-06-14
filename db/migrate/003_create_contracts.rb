class CreateContracts < ActiveRecord::Migration[5.2]
    def change
        create_table :contracts do |t|
            t.string   :first_name
            t.string   :last_name
            t.integer  :term_start
            t.integer  :term_end
            t.integer  :player_id
            t.integer  :team_id
        end
    end
end