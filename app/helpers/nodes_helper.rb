module NodesHelper
  def nodes_tree_for(nodes)
    nodes.map do |node, nested_nodes|
      render(node) +
          (nested_nodes.size > 0 ? content_tag(:div, nodes_tree_for(nested_nodes),style: "margin-left:20px", class: "replies") : nil)
    end.join.html_safe
  end
end
