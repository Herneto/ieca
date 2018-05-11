class AddCasadoToMembros < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :casado, :boolean
  end
end
