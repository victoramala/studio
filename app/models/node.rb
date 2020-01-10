class Node < ApplicationRecord
  acts_as_tree order: 'created_at'
  attribute_choices :node_type ,  [ ['film','Film'],['series', 'Series'], ['episodes', 'Episodes'], ['episode', 'Episode'], ['category', 'Category'], ['task', 'Task'] ]
  belongs_to :account
  has_many :assignments
  has_many :shot_files
  accepts_nested_attributes_for :assignments
  accepts_nested_attributes_for :shot_files
end
