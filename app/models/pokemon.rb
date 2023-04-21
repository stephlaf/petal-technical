class Pokemon < ApplicationRecord
  # The following validations are to test the `render_error` method used
  # in the `create` && `update` methods, and also for the unit tests

  validates :name, presence: true, uniqueness: true
  validates :name, length: { minimum: 3 }
end
