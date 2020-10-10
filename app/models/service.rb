class Service < ApplicationRecord
  has_many :services_customers, dependent: :nullify
  has_many :customers, through: :services_customers
  accepts_nested_attributes_for :services_customers
  belongs_to :user
  belongs_to :category
end
