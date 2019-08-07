class ChangeDataTypeForContent < ActiveRecord::Migration[5.2]
  def change
    change_column :greets, :content, :string
  end
end
