class AddBooleanValues < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :batizado, :boolean, :default => true
    add_column :membros, :confirmacao, :boolean, :default => true
  end
end
