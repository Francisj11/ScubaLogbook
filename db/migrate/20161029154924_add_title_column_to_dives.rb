class AddTitleColumnToDives < ActiveRecord::Migration
  def change
    add_column :dives, :title, :string
  end
end
