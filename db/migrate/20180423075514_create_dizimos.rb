class CreateDizimos < ActiveRecord::Migration[5.1]
  def change
    create_table :dizimos do |t|
      t.string :ano
      t.boolean :jan
      t.boolean :fev
      t.boolean :mar
      t.boolean :abr
      t.boolean :mai
      t.boolean :jun
      t.boolean :jul
      t.boolean :ago
      t.boolean :set
      t.boolean :out
      t.boolean :nov
      t.boolean :des
      t.references :membro, foreign_key: true

      t.timestamps
    end
  end
end
