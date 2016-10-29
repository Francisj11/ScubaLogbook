class AddNotesColumnToDives < ActiveRecord::Migration
  def change
    add_column :dives, :notes, :string
  end
end
