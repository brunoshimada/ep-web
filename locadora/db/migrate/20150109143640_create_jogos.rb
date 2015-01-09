class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.string :nome
      t.string :plataforma
      t.string :categoria

      t.timestamps null: false
    end
  end
end
