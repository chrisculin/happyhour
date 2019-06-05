class Deal < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :class_name => "Favorite",
             :dependent => :destroy

  belongs_to :bar

  # Indirect associations

  # Validations

end
