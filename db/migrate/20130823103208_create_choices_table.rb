class CreateChoicesTable < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :choice1
      t.boolean  :is_correct1
      t.string :choice2
      t.boolean  :is_correct2
      t.string :choice3
      t.boolean  :is_correct3
      t.string :choice4
      t.boolean  :is_correct4
      t.integer  :question_id
      t.timestamps
    end
  end
end
