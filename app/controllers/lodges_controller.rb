class LodgesController < ApplicationController

  # GET /lodges
  def index
    render json: Lodge.all
  end

  # GET /lodges/:id
  def show
    @lodge = Lodge.find(params[:id])
    # render json: lodge.to_json(include: { archons: { include: [:houses] } })
  end

  # def new - As this action is only to render a view, it is not important for the API

  # def edit - As this action is only to render a view, it is not important for the API

  # POST /lodges
  def create
    @lodge = Lodge.new(lodge_params)
    @lodge.save
  end

  # PUT /lodges/:id
  # PATCH /lodges/:id
  def update
    @lodge = Lodge.find params[:id]
    @lodge.update(lodge_params)
  end

  # DELETE /lodges/:id
  def destroy
    @lodge = Lodge.find params[:id]
    @lodge.destroy
  end

  def lodge_params
    params.require(:lodge).permit(:name)
  end

end
