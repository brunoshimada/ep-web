json.array!(@jogos) do |jogo|
  json.extract! jogo, :id, :nome, :plataforma, :categoria
  json.url jogo_url(jogo, format: :json)
end
