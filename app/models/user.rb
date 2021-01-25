class User < ApplicationRecord
  validates :username,
    presence: true,
    length: { maximum: 12 },
    format: { with: /[A-Za-z]/, message: "only allows letters" }

  validates :email,
    presence: true,
    format: { with: /\S*@\S*\.\S*/, message: "only allows valid email addresses"}

  validates :password,
    presence: true,
    length: { in: 6..12 }
end
