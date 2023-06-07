class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |customer|
      customer.email = "guest@example.com"
      customer.first_name = "ゲスト"
      customer.last_name = "ユーザー"
      customer.password = SecureRandom.urlsafe_base64
    end
  end
end
