json.array! @facts.each do |cnfact|
  json.id cnfact.id
  json.fact cnfact.fact
end