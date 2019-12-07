json.extract! node, :id, :name, :node_type, :description, :state, :created_at, :updated_at
json.url node_url(node, format: :json)
