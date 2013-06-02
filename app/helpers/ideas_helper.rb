module IdeasHelper
	def render_voted_class (user, idea)
		return "" if !user
		if user.voted_as_when_voted_for(idea)
			"votedUp"
		else
			"votedDown"
		end
	end
end
