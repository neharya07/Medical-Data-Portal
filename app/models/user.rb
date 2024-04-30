class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    enum role: { receptionist: 'receptionist', doctor: 'doctor' }

  def receptionist?
    role == 'receptionist'
  end

  def doctor?
    role == 'doctor'
  end

    def welcome
        "Hello, #{self.email}!"
    end
end
