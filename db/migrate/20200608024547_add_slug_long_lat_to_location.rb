class AddSlugLongLatToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :slug, :string
    add_column :locations, :long, :float
    add_column :locations, :lat, :float
  end
end
