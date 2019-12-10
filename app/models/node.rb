class Node < ApplicationRecord
  acts_as_tree order: 'created_at'
  attribute_choices :node_type ,  [ ['film','Film'],['series', 'Series'], ['episodes', 'Episodes'], ['episode', 'Episode'], ['category', 'Category'], ['task', 'Task'] ]
end
