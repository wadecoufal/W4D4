class AddBandToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :band, :string, presence: true
  end
end
