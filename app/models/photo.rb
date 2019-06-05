class Photo < ApplicationRecord
  # Direct associations

  belongs_to :comment,
             :counter_cache => true

  # Indirect associations

  has_one    :bar,
             :through => :comment,
             :source => :bar

  # Validations

end
