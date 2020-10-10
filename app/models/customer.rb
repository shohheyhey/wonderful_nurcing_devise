class Customer < ApplicationRecord
  has_many :services_customers, dependent: :nullify
  has_many :services, through: :services_customers, dependent: :nullify
  accepts_nested_attributes_for :services_customers
  belongs_to :user
  belongs_to :category
end
