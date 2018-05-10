class AddApagadoToMembros < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :apagado, :boolean
  end
end
