json.extract! cliente, :id, :nombre, :apellidos, :direccion, :telefono, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
