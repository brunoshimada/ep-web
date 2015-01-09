class CreateAlugaJogos < ActiveRecord::Migration
  def change
    create_table :aluga_jogos do |t|
      t.integer :id_cliente
      t.integer :id_jogo
      t.datetime :data_alugel
      t.float :valor

      t.timestamps null: false
    end
  end
end
