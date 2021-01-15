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
        if parent_node == nil 
            @parent = parent_node
            return 
        end 
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
        if self.children.delete(child_node) == nil 
            raise "Child node not inside PolyTreeNode"
        end 
        child_node.parent= nil
    end

    def dfs(target_value)
        if self.value == target_value
            return self 
        end
        @children.each do |ch|
            a_kid = ch.dfs(target_value)
            if a_kid 
                return a_kid
            end 
        end 
        return nil 
    end 

    def bfs(target_value)
        underlying_array = []
        underlying_array << self
        until underlying_array.empty?
            first_node =  underlying_array[0]
            underlying_array.shift
            new_array = underlying_array
            if first_node.value == target_value
                return first_node 
            else
                new_array.concat(first_node.children )
            end
        end
        nil
    end


end