class CorrectBandInAlbums < ActiveRecord::Migration[5.2]
  def change
    change_table :albums do |t|
      t.remove :band
      t.integer :band_id, null: false
    end

    add_index :albums, :band_id
  end
end
