class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.datetime :date_debut
      t.datetime :date_fin
      t.integer :nbr_ideal_bnvl

      t.timestamps null: false
    end
  end
end
