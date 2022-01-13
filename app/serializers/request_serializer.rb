class RequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :created_at, :updated_at, :category
  belongs_to :category
end
