class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :season
      t.string :city

      t.timestamps
    end
  end
end
