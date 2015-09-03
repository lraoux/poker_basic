# def remove_dups(arr)
#   result = []
#
#   arr.each { |el| result << el unless result.include?(el) }
#
#   result
# end
# 
# def two_sum (arr)
#   result = []
#   arr.each_with_index do |el,idx|
#     if arr.include?(-1* el) && el != 0
#       result.push([idx, arr.index(-1*el)]) unless result.include?([arr.index(-1*el), idx])
#       el = 0
#       arr[arr.index(-1*el)] = 0
#     end
#   end
#   result
# end
#
#
# def my_transpose(arr)
#   result = Array.new(arr.count) { [] }
#
#   arr.each do |row|
#     row.each_with_index do |col, idx|
#       result[idx] << col
#     end
#   end
#
#   result
# end
#
#
# def stock_picker(arr)
#   result = []
#   max = 0
#   new_max = 0
#   arr.each do |el|
#     arr.each_index do |idx|
#       if (new_max = arr[idx+1].to_i - el) > max
#         max = new_max
#         result[0] = arr.index(el)
#         result[1] = idx+1
#       end
#     end
#     max
#   end
#
#
#   result
# end
