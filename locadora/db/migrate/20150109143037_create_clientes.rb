class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cpf
      t.string :nome
      t.string :email
      t.string :celular
      t.datetime :data_nascimento

      t.timestamps null: false
    end
  end
end
