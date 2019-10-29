class BattlesController < ApplicationController

  # GET lodges/:lodge_id/battles
  def index
    @lodge = Lodge.find params[:lodge_id]
    render json: @lodge.battles
  end

  # GET lodges/:lodge_id/battles/:id
  def show
    @lodge = Lodge.find params[:lodge_id]
    @battle = @lodge.battles.find(params[:id])
    @battle.archon_one
  end

  # POST lodges/:lodge_id/battles
  def create
    @lodge = Lodge.find params[:lodge_id]
    @battle = @lodge.battles.create(battle_params)
  end

  # DELETE lodges/:lodge_id/battles/:id
  def delete
    @lodge = lodge.find params[:lodge_id]
    @lodge.battles.find(params[:id]).destroy
  end

  def battle_params
    params.require(:battle)
  end

end
