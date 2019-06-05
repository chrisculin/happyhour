class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :deal,
             :counter_cache => :likes_count

  belongs_to :user,
             :counter_cache => :likes_count

  # Indirect associations

  # Validations

end
