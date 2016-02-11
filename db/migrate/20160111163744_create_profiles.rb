class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :picture
      t.integer :user_id
      t.integer :votes, default: 0

      t.timestamps null: false
    end
  end
end
