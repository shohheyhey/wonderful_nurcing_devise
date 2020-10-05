class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birthday, :kaigodo, :medical_history, :discription
  has_one :user
  has_one :category
end
