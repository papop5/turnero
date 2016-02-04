json.array! @estados do |estado, turnos|
json.label estado
json.value turnos.count
end