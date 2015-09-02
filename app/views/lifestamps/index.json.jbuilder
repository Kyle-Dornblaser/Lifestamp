json.array!(@lifestamps) do |lifestamp|
  json.extract! lifestamp, :id, :value, :timestamp, :topic_id
  json.url lifestamp_url(lifestamp, format: :json)
end
