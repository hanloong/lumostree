require 'rails_helper'

RSpec.describe Node, type: :model do
  it "shouldn't be createable" do
    node = Node.create(value: "A")
    expect(node.persisted?).to be true
  end

  context "without a value" do
    it "should be invalid" do
      node = Node.new(value: nil)
      expect(node.valid?).to be false
    end
  end

  it "should be able to have children" do
    parent = Node.create(value: "A")
    child = parent.children.create(value: "AA")
    expect(child.parent).to eq parent
    expect(parent.children).to include child
  end
end
