# require 'rspec'
# require 'practice'
#
# describe "#remove_dups" do
#   subject(:clean_array) { [1, 2, 3] }
#   let(:dirty_array) { [1,1,1,2,3,3,3,2,1]}
#   context "when it receives a clean array" do
#     it "returns the same array" do
#       expect(remove_dups(clean_array)).to eq([1, 2, 3])
#     end
#   end
#
#   context "when it receives a dirty array" do
#     it "returns a clean form of that array" do
#       expect(remove_dups(dirty_array)).to eq([1,2,3])
#     end
#   end
# end
#
# describe "#two_sum" do
#   subject(:array1) { [-1, 0, 2, -2, 1] }
#   let(:array2) { [-1, 0, 2, -2, 1, 3, 4, -3] }
#   context "when it receives an array of numbers" do
#     it "returns a sorted array of the indices of all pairs that sum to 0" do
#       expect(two_sum(array1)).to eq([[0, 4], [2, 3]])
#       expect(two_sum(array2)).to eq([[0, 4], [2, 3], [5, 7]])
#     end
#   end
# end
#
# describe "#my_transpose" do
#   subject(:array3) { [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ] }
#   let(:array4) { [
#     [1]]  }
#   context "when it receives a sizeable, transposable array" do
#     it "transposes it in the expected manner" do
#       expect(my_transpose(array3)).to eq([
#         [0, 3, 6],
#         [1, 4, 7],
#         [2, 5, 8]])
#       expect(my_transpose(array4)).to eq([[1]])
#     end
#   end
# end
#
# describe "#stock_picker" do
#   let(:stocks1) { [15, 12, 13, 18, 14, 20]}
#   let(:stocks2) { [19, 15, 13, 18, 16, 17]}
#   context "when given a stock's daily price in chronological order" do
#     it "returns the most profitable days to buy and then sell the stock" do
#       expect(stock_picker(stocks1)).to eq([1, 5])
#       expect(stock_picker(stocks2)).to eq([2, 3])
#     end
#   end
# end
