class Node < ApplicationRecord
  acts_as_tree order: 'created_at'
  attribute_choices :node_type ,  [ ['film','Film'],['series', 'Series'], ['episodes', 'Episodes'], ['episode', 'Episode'], ['category', 'Category'], ['task', 'Task'] ]
  belongs_to :account
  has_many :assignments

  def all_assignments
  	all_assignments = []
  	puts ""
  	nodes= self.leaves.where("node_type = ?", 'task')
  	puts "+++++++++++++++++++++"
  	puts nodes.to_json
  	nodes.each do |node|
   	  all_assignments << node.assignments
    end
    puts "++++++++++++++++++++++++"
    puts all_assignments.to_json
    return all_assignments
  end
end
