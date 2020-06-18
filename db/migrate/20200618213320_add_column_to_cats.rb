class AddColumnToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :image_path, :string
  end
end
