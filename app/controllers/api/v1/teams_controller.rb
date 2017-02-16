class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all 
  end

  def create
    @team = Team.create(creature: params[:creature], name: params[:name], state: params[:state], sport: params[:sport])  

    render :show  
  end


  def show
    @team = Team.find_by(id:params[:id])  
  end

  def  update
    @team = Team.find_by(id:params[:id])
    @team.update(
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    render :show 
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.destroy
    team.save
  end
end
