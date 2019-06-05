class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => :likes_count

  # Indirect associations

  # Validations

end
