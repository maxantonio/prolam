class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def is_colaborador?
    self.permission_level == 1
  end
  def is_admin?
    self.permission_level == 3
  end
end
