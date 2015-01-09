json.array!(@aluga_jogos) do |aluga_jogo|
  json.extract! aluga_jogo, :id, :id_cliente, :id_jogo, :data_alugel, :valor
  json.url aluga_jogo_url(aluga_jogo, format: :json)
end
