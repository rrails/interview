class AddColumnChallengeIdFromQuestionsTable < ActiveRecord::Migration
  def change
    add_column :questions, :challenge_id, :integer
  end
end
