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
    import_link = (JSON.parse(params[:_json]))['import_link']
    puts import_link
    # import_link = params[:import_link]
    # # import_link = request.body.read['import_link']
    # if import_link.include? 'https://www.keyforgegame.com/deck-details/'
    #   import_link.slice! 'https://www.keyforgegame.com/deckpermit-details/'
    #   ImportArchon.call(import_link)
    # end
  end

end
