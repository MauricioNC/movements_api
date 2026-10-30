class MovementsController < ApplicationController
  def create
    @movements = Movement.new(movement_params)

    if @movements.save
      render json: { data: @movements }, status: :ok
    else
      render json: { error_message: @movements.errors_full_messages }, status: :unprocessable_entity
    end
  end

  private

  def movement_params
    params.require(:movement).permit(*REQUIRED_MOVEMENT_PARMS)
  end
end
