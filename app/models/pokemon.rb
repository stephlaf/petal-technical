class Pokemon < ApplicationRecord
  # The following validations were to test the `render_error` method used
  # in the `create` && `update` methods, and also for the unit tests
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
