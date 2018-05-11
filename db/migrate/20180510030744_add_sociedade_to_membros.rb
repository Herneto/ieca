class AddSociedadeToMembros < ActiveRecord::Migration[5.1]
  def change
    add_column :membros, :sociedade, :string
  end
end
