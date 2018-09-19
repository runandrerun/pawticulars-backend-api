class ParkCommunitiesController < ApplicationController
  before_action :set_park_community, only: [:show, :update, :destroy]

  # GET /park_communities
  def index
    @park_communities = ParkCommunity.all

    render json: @park_communities
  end

  # GET /park_communities/1
  def show
    render json: @park_community
  end

  # POST /park_communities
  def create
    @park_community = ParkCommunity.new(park_community_params)

    if @park_community.save
      render json: @park_community, status: :created, location: @park_community
    else
      render json: @park_community.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /park_communities/1
  def update
    if @park_community.update(park_community_params)
      render json: @park_community
    else
      render json: @park_community.errors, status: :unprocessable_entity
    end
  end

  # DELETE /park_communities/1
  def destroy
    @park_community.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park_community
      @park_community = ParkCommunity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def park_community_params
      # params.fetch(:park_community, {})
      params.require(:park_community).permit()
    end
end
