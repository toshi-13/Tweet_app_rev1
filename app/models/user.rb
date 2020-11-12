class User < ApplicationRecord
  set_table_name:Users
  validates :name,{presence: true}
  validates :email,{presence: true, uniqueness: true}
end
