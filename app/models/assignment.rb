class Assignment < ApplicationRecord
  belongs_to :node
  belongs_to :user
  attribute_choices :status ,  [['p', 'Assigned'], ['r', 'Reviewed'], ['a', 'approved']]
end
