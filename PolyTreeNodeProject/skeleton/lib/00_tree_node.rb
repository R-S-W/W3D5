class PolyTreeNode
    attr_reader  :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children  = []

    end

    def parent=(parent_node)

        self.parent.remove_child(self)

        self.parent = parent_node
        parent_node.children << self

        
        
        
    end

    def add_child(child_node)
        child_node.parent = self

        
    end

    def remove_child
    end


end