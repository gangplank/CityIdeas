namespace :voting do 
  #
  #  update voting scores
  #

  task :update_scores => :environment do
    puts "Updating Voting Scores for All Ideas"
    Idea.all.each do |idea|
      idea.update_vote_score
    end
  end
end