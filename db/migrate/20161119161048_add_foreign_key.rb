class AddForeignKey < ActiveRecord::Migration
  def change

	add_foreign_key :dives, :users
  end
end
