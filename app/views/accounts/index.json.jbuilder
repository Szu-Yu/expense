json.array!(@accounts) do |account|
  json.extract! account, :id, :expense, :money
  json.url account_url(account, format: :json)
end
