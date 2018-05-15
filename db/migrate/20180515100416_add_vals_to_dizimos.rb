class AddValsToDizimos < ActiveRecord::Migration[5.1]
  def change
    add_column :dizimos, :janv, :string
    add_column :dizimos, :fevv, :string
    add_column :dizimos, :marv, :string
    add_column :dizimos, :abrv, :string
    add_column :dizimos, :maiv, :string
    add_column :dizimos, :junv, :string
    add_column :dizimos, :julv, :string
    add_column :dizimos, :agov, :string
    add_column :dizimos, :setv, :string
    add_column :dizimos, :outv, :string
    add_column :dizimos, :novv, :string
    add_column :dizimos, :desv, :string
  end
end
