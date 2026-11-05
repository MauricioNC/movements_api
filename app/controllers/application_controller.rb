class ApplicationController < ActionController::Base
  include Pagy::Method

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  REQUIRED_MOVEMENT_PARMS = %i[
    movement_type
    place_type
    account_type
    start_date
    name
    nationality
    owner_place
    constancy_folio
    rfc
    curp
    gender
    place_of_birth
    marital_status
    street_and_number
    neigborhood
    postal_code
    city
    state
    movement_type_number
    start_day
    start_month
    start_year
    end_day
    end_month
    end_year
    employee_type
    ppm_folio
    past_position
    past_position_desc
    past_budget_key
    past_resp_center_key
    past_resp_center_desc
    current_position
    current_position_desc
    current_budget_key
    current_resp_center_key
    current_resp_center_desc
    justification
    needs_commission
    commissioned_to
    proposed_by
    made_by
  ]
end
