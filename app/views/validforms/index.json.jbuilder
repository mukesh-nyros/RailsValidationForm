json.array!(@validforms) do |validform|
  json.extract! validform, :id, :Username, :Password, :DateofBirth, :Email, :Phone
  json.url validform_url(validform, format: :json)
end
