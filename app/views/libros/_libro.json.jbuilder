json.extract! libro, :id, :nombre, :autor, :genero, :created_at, :updated_at
json.url libro_url(libro, format: :json)
