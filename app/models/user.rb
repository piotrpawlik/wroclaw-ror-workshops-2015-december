class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	# def password=(password)
	# 	@password = password
	# end
end
