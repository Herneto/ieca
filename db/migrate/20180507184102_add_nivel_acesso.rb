class AddNivelAcesso < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :nivel, :string
  end
end
