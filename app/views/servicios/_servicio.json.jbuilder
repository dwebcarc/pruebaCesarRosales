json.extract! servicio, :id, :nombreServicio, :descripcionServicio, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
