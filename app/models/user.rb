require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'
require 'bcrypt'

class User
	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :username, String
	property :email, String
	property :password, Text

	# def password=(password)
 #    self.password_digest = BCrypt::Password.create(password)
 #  	end
end 

DataMapper.setup(:default, "postgres://localhost/chitter_development")
DataMapper.finalize
DataMapper.auto_upgrade!