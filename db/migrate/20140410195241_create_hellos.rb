class CreateHellos < ActiveRecord::Migration
  def change
    create_table :hellos do |t|
      t.string :artist
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
