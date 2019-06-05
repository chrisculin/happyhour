class Bar < ApplicationRecord
  # Direct associations

  has_many   :deals,
             :dependent => :destroy

  # Indirect associations

  has_many   :photos,
             :through => :comments,
             :source => :photos

  # Validations

end
