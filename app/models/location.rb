class Location < ActiveRecord::Base
  has_many :events
  validates_presence_of :name, :address_1, :city
  acts_as_gmappable(process_geocoding: !Rails.env.test?, msg: 'not valid', address: 'address')

  def address
    "#{self.address_1}, #{self.city}, #{self.state}, #{self.zip}"
  end

end
