class Comment < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  belongs_to :deal,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_one    :bar,
             :through => :deal,
             :source => :bar

  # Validations

end
