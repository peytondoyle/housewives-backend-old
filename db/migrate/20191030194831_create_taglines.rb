class CreateTaglines < ActiveRecord::Migration[6.0]
  def change
    create_table :taglines do |t|
      t.string :tagline
      t.integer :housewife_id
      t.integer :season_id

      t.timestamps
    end
  end
end
