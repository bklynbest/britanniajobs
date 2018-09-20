class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    after_initialize :set_default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
          
  def set_default_role
    self.role ||= :user
  end
  
  enum role: [:user, :job_author, :admin]
  has_many :jobs, :foreign_key => 'company_id' 
end
