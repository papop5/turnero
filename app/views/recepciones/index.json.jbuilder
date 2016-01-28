json.array!(@recepciones) do |recepcion|
  json.extract! recepcion, :id, :asunto, :descripcion, :nombres
  json.url recepcion_url(recepcion, format: :json)
end
