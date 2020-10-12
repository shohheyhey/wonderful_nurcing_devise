class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birthday, :kaigodo, :medical_history, :discription
  belongs_to :user
  belongs_to :category
end
