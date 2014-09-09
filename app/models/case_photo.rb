class CasePhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :case
end
