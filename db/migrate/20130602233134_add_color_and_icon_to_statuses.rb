class AddColorAndIconToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :color, :string
    add_column :statuses, :icon, :string
  end
end
