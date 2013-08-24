class CreateAttemptsTable < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer  :fails
      t.integer  :passes
      t.timestamps
    end
  end
end