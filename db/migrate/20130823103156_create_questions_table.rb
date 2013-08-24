class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.integer  :challenge_id
      t.timestamps
    end
  end
end
