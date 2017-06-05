class CreateArtistifications < ActiveRecord::Migration[5.1]
  def change
    create_table :artistifications do |t|
      t.references :album, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
