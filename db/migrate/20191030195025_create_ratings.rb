class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :housewife_id
      t.integer :user_id

      t.timestamps
    end
  end
end
