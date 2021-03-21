class ChangeDataTypeForStage < ActiveRecord::Migration[6.1]
  def change
    change_column :adr_lists, :Phone, :string

  end
end
