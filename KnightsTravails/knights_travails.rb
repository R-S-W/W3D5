require_relative "../PolyTreeNodeProject/skeleton/lib/00_tree_node.rb"
class KnightPathFinder

    def self.valid_moves(pos)
        move_arr = []
        gallup_arr = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [-1, 2], [1, -2], [-1, -2]]
    end 

    def initialize(pos)
        @position = pos 
        @root_node = PolyTreeNode.new(pos)

    end 

    def find_path(pos)

    end 
    
    def new_move_positions

    end 
end