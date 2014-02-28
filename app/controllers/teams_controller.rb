class TeamsController < ActionController::Base

def index
		@teams = Team.all
		@team = Team.new

end

def show
	@team = Team.find(params[:id])
end

 

def create
	@team = Team.create(params[:team])
	unless @team.save!
		render :new
	else
		flash[:notice] = "Successfully created Team"
		redirect_to teams_path 
	end
end


end