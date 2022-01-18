class RequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :vote, :created_at, :updated_at, :category
end
