json.extract! citum, :id, :fechaHora, :duracion, :estado_citum_id, :mascota_id, :veterinario_id, :servicio_id, :created_at, :updated_at
json.url citum_url(citum, format: :json)
