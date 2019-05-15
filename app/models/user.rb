class User < ApplicationRecord
    has_secure_password
    has_secure_token :confirmation_token
    validates :user_name, uniqueness: {case_sensitive: false}
    validates :mail , uniqueness: {case_sensitive: false}

    
    def to_session
        {id: id}
    end

end
