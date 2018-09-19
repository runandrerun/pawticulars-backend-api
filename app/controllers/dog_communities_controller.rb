class DogCommunitiesController < ApplicationController
  before_action :set_dog_community, only: [:show, :update, :destroy]

  # GET /dog_communities
  def index
    @dog_communities = DogCommunity.all

    render json: @dog_communities
  end

  # GET /dog_communities/1
  def show
    render json: @dog_community
  end

  # POST /dog_communities
  def create
    @dog_community = DogCommunity.new(dog_community_params)

    if @dog_community.save
      render json: @dog_community, status: :created, location: @dog_community
    else
      render json: @dog_community.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dog_communities/1
  def update
    if @dog_community.update(dog_community_params)
      render json: @dog_community
    else
      render json: @dog_community.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dog_communities/1
  def destroy
    @dog_community.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_community
      @dog_community = DogCommunity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dog_community_params
      # params.fetch(:dog_community, {})
      params.require(:dog_community).permit(:dog_id, :dog_park_id)
    end
end
