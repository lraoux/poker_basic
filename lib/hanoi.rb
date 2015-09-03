# class Hanoi
#   attr_reader :towers
#
#   def initialize(towers = [[3, 2, 1], [], []])
#     @towers = towers
#   end
#
#   def over?
#     @towers == [[], [3, 2, 1], []] || @towers == [[], [], [3, 2, 1]]
#   end
#
#   def move(a, b)
#     towers[b].push(towers[a].pop)
#   end
# end
