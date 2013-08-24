class CreateChallengesTable < ActiveRecord::Migration
   def change
    create_table :challenges do |t|
      t.string :name
      t.integer  :user_id
      t.timestamps
    end
  end
end
