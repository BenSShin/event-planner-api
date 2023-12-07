class ChangeStatusDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :trips, :status, from: nil, to: "planned"
  end
end
