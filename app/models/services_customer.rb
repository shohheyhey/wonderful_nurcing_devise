class ServicesCustomer < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :customer, optional: true
end
