class CreateGenrefications < ActiveRecord::Migration[5.1]
  def change
    create_table :genrefications do |t|
      t.references :artist, foreign_key: true
      t.references :album, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
