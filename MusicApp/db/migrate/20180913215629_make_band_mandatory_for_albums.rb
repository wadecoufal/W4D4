class MakeBandMandatoryForAlbums < ActiveRecord::Migration[5.2]
  def change
    change_table :albums do |t|
      t.change :band, :string, null: false
    end
  end
end
