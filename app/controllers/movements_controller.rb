class MovementsController < ApplicationController
  def create
    movements = movements_params.map do |movement|
      Movement.new(movement)
    end

    if movements.all?(&:valid?)
      Movement.transaction do
        movements.each(&:save!)
      end

      render json: { data: movements }, status: :created
    else
      render json: {
        errors: movements.map { |m| m.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  private

  def movements_params
    params.permit(
      movements: REQUIRED_MOVEMENT_PARMS
    ).require(:movements)
  end
end
