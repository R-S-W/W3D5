require "byebug"
class PolyTreeNode
    attr_reader  :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children  = []

    end

    def parent=(parent_node)
        # debugger
        if self.parent 
            self.parent.remove_child(self)
        end 
        # self.parent = parent_node

        @parent = parent_node
        if !self.parent.nil?
            #     self.parent.children << self
            # end
            if !parent_node.children.any? {|ch| ch == self}
                parent_node.children << self
            end 
        end
        # parent_node.add_child(self)
    end

    def add_child(child_node)
        child_node.parent = self
        
    end

    def remove_child(child_node)
        self.children.delete(child_node)
        child_node.parent= nil
    end


end