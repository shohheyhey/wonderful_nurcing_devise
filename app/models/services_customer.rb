class ServicesCustomer < ApplicationRecord
  belongs_to :service
  belongs_to :customer
end
