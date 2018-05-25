class AddOtherDoc < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :cedula, :string
    add_column :membros, :cartao_residente, :string
    add_column :membros, :passaporte, :string
    add_column :membros, :cartao_eleitoral, :string    
  end
end
