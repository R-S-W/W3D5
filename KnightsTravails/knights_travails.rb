require_relative "../PolyTreeNodeProject/skeleton/lib/00_tree_node.rb"
class KnightPathFinder

    def self.valid_moves(pos)
        move_arr = []
        x,y = pos
        gallup_arr = [[x+2, 1+y], [x+2, -1+y], [x-2, 1+y], [x-2, -1+y], [x+1, 2+y], [x-1, 2+y], [x+1, -2+y], [x-1, -2+y]]
        
        gallup_arr.each do |new_pos|  
            move_arr << new_pos  if new_pos.all? {|ele| ele>=0 && ele < 8 }
        end
        move_arr
    end 

    def initialize(pos)
        @position = pos 
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [pos]

    end 

    def find_path(pos)

    end 
    
    def new_move_positions(pos)


    end 
end