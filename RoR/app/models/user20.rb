# Table: users
# email      :string
# password   :string
# first_name :string
# last_name  :string
# confirmed  :bool
# created_at :datetime
# updated_at :datetime

# 1. email уникальный
# 2. password должен содержать (8 символов, минимум 1 букву маленькую и одну большую + 1 символ (!№;%))
# 3. first_name обязан быть заполнен
# 4. last_name обязан быть заполнен
# 5. email и password должны приходить с подтверждениями
# 6. написать скоупы чтобы фильтровать всех пользователей, которые зарегистрировались между 2 датами
# 7. фильтровать всех пользователей, которые confirmed: true

class User20 < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email, uniqueness: true
  validates :email, :password, confirmation: true
  validates :password, length: { is: 8},
                       format: { with: /\A(?=.[a-z])(?=.[A-Z])(?=.*[!№;%]).{8,}\z/,
                                 message: 'Password Error'}

  scope :data_scope, ->(from, to) { where('created_at >= ? AND created_at <= ?', from, to) }
end
