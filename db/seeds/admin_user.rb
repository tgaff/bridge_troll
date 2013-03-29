module Seeder
  def self.admin_user
    # seeds the database with an admin user
    admin = User.where(email: 'admin@example.com').first_or_initialize
    admin.update_attributes(
      name: 'admin',
      password: 'password',
      first_name: 'Admin',
      last_name: 'User',
    )
    admin.admin = true
    admin.save!
    admin.confirmed_at = Time.now
    admin.save!
  end
end
