class UserDogsController < ApplicationController
  before_action :set_user_dog, only: [:show, :update, :destroy]

  # GET /user_dogs
  def index
    @user_dogs = UserDog.all

    render json: @user_dogs
  end

  # GET /user_dogs/1
  def show
    render json: @user_dog
  end

  # POST /user_dogs
  def create
    @user_dog = UserDog.new(user_dog_params)

    if @user_dog.save
      render json: @user_dog, status: :created, location: @user_dog
    else
      render json: @user_dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_dogs/1
  def update
    if @user_dog.update(user_dog_params)
      render json: @user_dog
    else
      render json: @user_dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_dogs/1
  def destroy
    @user_dog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_dog
      @user_dog = UserDog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_dog_params
      # params.fetch(:user_dog, {})
      params.require(:user_dog).permit(:user_id, :dog_id)
    end
end
