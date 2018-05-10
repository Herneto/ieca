class CreateMembros < ActiveRecord::Migration[5.1]
  def change
    create_table :membros do |t|
      t.string :nome
      t.string :pai
      t.string :mae
      t.string :residencia
      t.string :nacionalidade
      t.string :naturalidade
      t.string :provincia
      t.datetime :nascimento
      t.boolean :sexo
      t.string :estado_civil
      t.string :peso
      t.string :altura
      t.datetime :data_casamento
      t.text :agregado
      t.string :localbaptismo
      t.datetime :data_batismo
      t.string :localconfirmacao
      t.datetime :data_confirmacao
      t.string :categoriareligiosa
      t.string :cargolideranca
      t.timestamps
    end
  end
end
