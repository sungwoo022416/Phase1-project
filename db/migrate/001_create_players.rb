class CreatePlayers < ActiveRecord::Migration[5.2]
    def change
        create_table :players do |t|
            t.string    :name
            t.string    :position
            t.integer   :years_pro
            t.integer   :team
        end
    end
end
