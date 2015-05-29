class AddScaleColorToPets < ActiveRecord::Migration
  def change
  	add_column :pets, :scale_color, :string
  end
end
