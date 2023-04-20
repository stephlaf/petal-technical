class Pokemon < ApplicationRecord
  # The following validation was to test the `render_error` method used
  # in the `create` && `update` methods
  validates :name, presence: true
end
