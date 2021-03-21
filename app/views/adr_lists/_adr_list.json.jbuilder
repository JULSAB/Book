json.extract! adr_list, :id, :Address, :Phone, :Name, :LastName, :email, :created_at, :updated_at
json.url adr_list_url(adr_list, format: :json)
