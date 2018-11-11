class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :type_of
      t.string :description
      t.integer :place_id
      t.string :age_rating
      t.string :gender

      t.timestamps
    end
  end
end
