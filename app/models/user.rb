class User < ApplicationRecord
    validates :username, presence: true, length: {minimum: 5, maximum: 10}
    has_secure_password
end