class CreateContracts < ActiveRecord::Migration[6.1]
    def change
        create_table :contracts do |t|
            t.integer  :term_start
            t.integer  :term_end
            t.integer  :player_id
            t.integer  :team_id
        end
    end
end