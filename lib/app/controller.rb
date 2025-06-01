require 'gossip'
require 'view'
require 'csv'

class Controller
  attr_accessor :gossip

  def initialize
    @gossip = Gossip
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip

    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
  end

  def destroy_gossip
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
    index = @view.index_to_delete
    @gossip.destroy(index)
  end
end
