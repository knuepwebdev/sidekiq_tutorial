class AddFurColorToPets < ActiveRecord::Migration
  def change
  	add_column :pets, :fur_color, :string
  end
end
