class Api::V1::TeamsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @teams = Team.all
    render json: @teams 
  end

  def new 
    
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
    @team.update_attributes(
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    @team.save 
    render json: @team 
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.destroy
    team.save
  end
end
