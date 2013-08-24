class RemoveColumnsFromChoicesTable < ActiveRecord::Migration
   def change
    remove_column :choices, :choice1
    remove_column :choices, :choice2
    remove_column :choices, :choice3
    remove_column :choices, :choice4

    remove_column :choices, :is_correct1
    remove_column :choices, :is_correct2
    remove_column :choices, :is_correct3
    remove_column :choices, :is_correct4
    add_column :choices, :choice ,:string
    add_column :choices, :is_correct ,:boolean
  end
end
