json.extract! pessoa, :id, :Nome, :genero, :data_de_nascimento, :CPF, :Telefone, :Email, :Endereco, :Cidade, :Estado, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
