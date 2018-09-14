class FixStudio < ActiveRecord::Migration[5.2]
  def change
    change_table :albums do |t|
      t.remove :studio
      t.string :studio, default: 'Studio'
    end
  end
end
