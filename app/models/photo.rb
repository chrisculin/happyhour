class Photo < ApplicationRecord
  # Direct associations

  belongs_to :comment,
             :counter_cache => true

  # Indirect associations

  # Validations

end
