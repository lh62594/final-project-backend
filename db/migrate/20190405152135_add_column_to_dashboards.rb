class AddColumnToDashboards < ActiveRecord::Migration[5.2]
  def change
    add_column :dashboards, :newsfeed, :boolean
  end
end
