class Bar < ApplicationRecord
  # Direct associations

  has_many   :deals,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
