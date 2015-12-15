json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :contenido, :imagen
  json.url post_url(post, format: :json)
end
