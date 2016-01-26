json.array!(@turnos) do |turno|
  json.extract! turno, :id, :usuario_ingreso_id, :usuario_atencion_id, :agencia, :nombres, :asunto, :descripcion, :hora_ingreso, :hora_atencion, :hora_finalizacion, :comentario, :estado
  json.url turno_url(turno, format: :json)
end
