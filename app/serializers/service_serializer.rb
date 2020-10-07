class ServiceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :category
end
