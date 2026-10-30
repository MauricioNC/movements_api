class CreateMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :movements do |t|
      t.string :movement_type
      t.string :place_type
      t.string :account_type
      t.date :start_date
      t.string :name
      t.string :nationality
      t.string :owner_place
      t.string :constancy_folio
      t.string :rfc
      t.string :curp
      t.string :gender
      t.string :place_of_birth
      t.string :marital_status
      t.string :street_and_number
      t.string :neigborhood
      t.string :postal_code
      t.string :city
      t.string :state
      t.string :movement_type_number
      t.string :start_day
      t.string :start_month
      t.string :start_year
      t.string :end_day
      t.string :end_month
      t.string :end_year
      t.string :employee_type
      t.string :ppm_folio
      t.string :past_position
      t.string :past_position_desc
      t.string :past_budget_key
      t.string :past_resp_center_key
      t.string :past_resp_center_desc
      t.string :current_position
      t.string :current_position_desc
      t.string :current_budget_key
      t.string :current_resp_center_key
      t.string :current_resp_center_desc
      t.string :justification
      t.boolean :needs_commission, default: false
      t.string :commissioned_to, default: "NA"
      t.string :proposed_by
      t.string :made_by

      t.timestamps
    end
  end
end
