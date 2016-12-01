class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :date_debut
      t.text :quels_jours
      t.integer :nbr_heures_par_jours

      t.timestamps null: false
    end
  end
end
