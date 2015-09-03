# require 'rspec'
# require 'hanoi'
#
# describe Hanoi do
#
#   subject(:game) {Hanoi.new}
#
#   describe "#initialize" do
#   context "When a new game starts" do
#     it "even successfully makes the game" do
#       expect(game.class).to be(Hanoi)
#     end
#   end
#
#   context "Also check that the game" do
#     it "makes 3 towers in the right way" do
#       expect(game.towers).to eq([[3,2,1],[],[]])
#       end
#     end
#   end
#
#   describe "#over?" do
#   let(:victory1) { Hanoi.new([[],[3,2,1],[]])}
#   let(:victory2) { Hanoi.new([[],[],[3,2,1]])}
#   let(:not_victory) { Hanoi.new([[1],[],[3,2]])}
#   context "If the game is supposedly over" do
#     it "has the disks in place" do
#       expect(victory1).to be_over
#       expect(victory2).to be_over
#       expect(not_victory).to_not be_over
#       end
#     end
#   end
#
#   describe "#move" do
#   let(:mover) {Hanoi.new}
#   before do
#     mover.move(0,1)
#   end
#   context "When move is called" do
#     it "the towers are in different spots" do
#       expect(mover.towers).to eq([[3,2],[1],[]])
#       end
#     end
#   end
# end
