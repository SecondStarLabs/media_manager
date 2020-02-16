json.extract! media_asset, :id, :title, :description, :created_at, :updated_at
json.url media_asset_url(media_asset, format: :json)
