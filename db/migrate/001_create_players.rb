class CreatePlayers < ActiveRecord::Migration[6.1]
    def change
        create_table :players, id: false, primary_key: :player_id do |t|
            t.primary_key :id
            t.string      :first_name
            t.string      :last_name
            t.string      :position
            t.integer     :years_pro
        end
    end
end
