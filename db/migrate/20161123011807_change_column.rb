class ChangeColumn < ActiveRecord::Migration
  def change
	change_column :dives, :dive_buddy, :string
  end
end
