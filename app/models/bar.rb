require 'open-uri'
class Bar < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if self.address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  has_many   :deals,
             :dependent => :destroy

  # Indirect associations

  has_many   :likes,
             :through => :deals,
             :source => :likes

  has_many   :comments,
             :through => :deals,
             :source => :comments

  has_many   :photos,
             :through => :comments,
             :source => :photos

  # Validations

end
