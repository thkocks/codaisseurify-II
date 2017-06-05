class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.integer :track_number
      t.string :image_url

      t.timestamps
    end
  end
end
