class AddBiToMembros < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :bi, :string
  end
end
