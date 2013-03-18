class Role < ActiveHash::Base
  include ActiveHash::Enum
  self.data = [
    {id: 1, name: 'STUDENT', title: "Student"},
    {id: 2, name: 'VOLUNTEER', title: "Volunteer"},
    {id: 3, name: 'ORGANIZER', title: "Organizer"}
  ]
  enum_accessor :name
end
