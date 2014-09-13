class User < ActiveRecord::Base
  #before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  
  def initialize(attributes = {})
    super # must allow the active record to initialize!
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def self.authenticate_by_email(email, password)
  user = find_by_email(email)
  if user.password == password
    user
  else
    nil
  end
end

def self.authenticate_by_username(username, password)
  user = find_by_username(username)
  if user != nil
	if user.password == password
		user
	else
		nil
	end
	else
	nil
	end
end

#  def encrypt_password
#    if password.present?
#      self.password_salt = BCrypt::Engine.generate_salt
#      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#    end
#  end
end
