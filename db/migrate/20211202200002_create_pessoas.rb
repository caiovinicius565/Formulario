class CreatePessoas < ActiveRecord::Migration[6.1]
  def change
    create_table :pessoas do |t|
      t.string :Nome
      t.string :genero
      t.string :data_de_nascimento
      t.string :CPF
      t.string :Telefone
      t.string :Email
      t.string :Endereco
      t.string :Cidade
      t.string :Estado

      t.timestamps
    end
  end
end
