class Service < ApplicationRecord
  has_many :customers, through: :services_customers
  has_many :services_customers, dependent: :nullify
  accepts_nested_attributes_for :services_customers
  belongs_to :user
  belongs_to :category
end
