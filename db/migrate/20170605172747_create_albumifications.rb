class CreateAlbumifications < ActiveRecord::Migration[5.1]
  def change
    create_table :albumifications do |t|
      t.references :artist, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
