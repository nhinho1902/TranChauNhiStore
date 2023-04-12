json.extract! product, :id, :name_of_product, :date, :origin, :packaging_measure, :supplier, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
