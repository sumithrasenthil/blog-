class Creature < ApplicationRecord
    has_secure_password
    validates_presence_of :firstname ,:email ,:password
    validates_uniqueness_of :email ,:username
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates_length_of :password , minimum: 6 
    def fullname 
        firstname+" "+lastname
    end

end

