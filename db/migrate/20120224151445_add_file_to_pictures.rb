class AddFileToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :file, :string

  end
end
