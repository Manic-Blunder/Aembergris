class ImportArchon
  prepend SimpleCommand

  def initialize(code)
    @code = code
  end

  def call
    parse_archon(call_keyforge_api)
  end

  private

  attr_accessor :code

  def call_keyforge_api
    JSON.parse(RestClient::Request.execute(
        method: :get,
        url: "https://www.keyforgegame.com/api/decks/#{@code}/?links=cards,notes",
        headers: {}
    ))
  end

  # @param [hash] archon_response
  # @return [Archon]
  def parse_archon(archon_response)
    lodge_id = 1 #params[:lodge_id]
    unless Archon.exists? uuid: archon_response['data']['id']
      archon = Archon.new name: archon_response['data']['name'], uuid: archon_response['data']['id'], lodge_id: lodge_id, color: pick_color
      archon_response['data']['_links']['houses'].each do |house_name|
        archon.houses << House.find_by_name(house_name.downcase)
        archon.wins = 0
        archon.losses = 0
        archon.sas = 0
        archon.aerc = 0
        archon.ranky = 0
        archon.chains = 0
        archon.win_streaking = false
      end
      archon.save
    end
    nil
  end

  def pick_color
    %i[blue red green orange yellow purple gray][rand 0..6]
  end
end