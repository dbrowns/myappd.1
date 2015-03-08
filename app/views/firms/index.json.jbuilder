json.array!(@firms) do |firm|
  json.extract! firm, :id, :firm_id, :type, :sector, :specialties, :vintage, :location, :size, :projects, :top_10_products, :accolades, :state_licensure, :name, :email, :phone, :website
  json.url firm_url(firm, format: :json)
end
