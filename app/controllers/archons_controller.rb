class ArchonsController < ApplicationController

  # GET lodges/:lodge_id/archons
  def index
    @lodge = Lodge.find params[:lodge_id]
    render json: @lodge.archons
  end

  # GET lodges/:lodge_id/archons/:id
  def show
    @lodge = Lodge.find params[:lodge_id]
    render json: @lodge.archons.find(params[:id])
  end

  # DELETE lodges/:lodge_id/archons/:id
  def delete
    @lodge = Lodge.find params[:lodge_id]
    @lodge.archons.find(params[:id]).destroy
  end

  def import
    puts 'THE PARAMS ARE -------------------------------------------'
    puts params
    import_link = params[:_json]
    import_link.slice('import_link=')
    puts import_link
    ImportArchon.call(import_link)
    # end
  end

end
