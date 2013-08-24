class RemoveColumnChallengeIdFromQuestionsTable < ActiveRecord::Migration
  def change
    remove_column :questions, :challenge_id
  end
end
