json.extract! voucher, :id, :code, :discount, :business_id, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)
