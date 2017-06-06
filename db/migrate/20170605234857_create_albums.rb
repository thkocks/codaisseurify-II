class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :released
      t.references :artist, foreign_key: true
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
