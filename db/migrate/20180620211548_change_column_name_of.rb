class ChangeColumnNameOf < ActiveRecord::Migration[5.2]
  def change
    rename_column :crusts, :type, :name
  end
end
