class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :genre_musique  #ne pas utiliser le mot type
      t.date :date
      t.string :pays
      t.boolean :status
      t.binary :photo
      t.timestamps null: false
    end
  end
end
