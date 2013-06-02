class AddVoteScoreToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :vote_score, :integer
  end
end
