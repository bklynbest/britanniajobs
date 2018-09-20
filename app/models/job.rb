class Job < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :company, :class_name => 'User', :foreign_key => 'company_id'
    JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
end
