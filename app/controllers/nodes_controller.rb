class NodesController < ApplicationController
  before_action :set_node, only: %i(update destroy)

  def index
    @nodes = Node.where(parent_id: nil).order(:created_at)
  end

  def create
    Node.create node_params
    redirect_to root_path
  end

  def update
    @node.update node_params
    redirect_to root_path
  end

  def destroy
    @node.destroy
    redirect_to root_path
  end

  private

  def node_params
    params.require(:node).permit(:value, :parent_id)
  end

  def set_node
    @node = Node.find params[:id]
  end
end
