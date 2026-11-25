class MovementsController < ApplicationController
  def index
    @pagy, @movements = pagy(:offset, Movement.order(start_date: :desc).all)

    render json: {
      movements: @movements
    }, status: :ok
  end

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

  def update
    movement = Movement.find(params[:id])
    movement.update(movements_params)

    render json: { data: movement }, status: :created
  rescue
    render json: {
      errors: movement
    }, status: :unprocessable_entity
  end

  private

  def movements_params
    params.permit(
      movements: REQUIRED_MOVEMENT_PARMS
    ).require(:movements)
  end
end
