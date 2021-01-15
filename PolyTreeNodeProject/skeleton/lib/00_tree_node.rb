class PolyTreeNode
    attr_reader  :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children  = []

    end

    def parent=(parent_node)
        if self.parent 
            self.parent.remove_child(self)
        end 
        # self.parent = parent_node
        parent_node.add_child(self)
    end

    def add_child(child_node)
        child_node.parent = self
        if !self.children.any? {|ch| ch == child_node}
            self.children << child_node
        end 
    end

    def remove_child(child_node)
        child_node.parent = nil 
        self.children.delete(child_node)
    end


end