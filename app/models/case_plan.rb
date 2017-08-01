class CasePlan < ApplicationRecord
  belongs_to :user
  belongs_to :case
  belongs_to :plan
end
