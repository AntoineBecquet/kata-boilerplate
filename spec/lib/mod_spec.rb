describe Mod do
  it "is a module" do
    expect(Mod).to be_a Module
  end

  it "loads fixtures" do
    expect(fixture("input1")).to match(<<~FILE)
      Generation 1:
      4 8
      ........
      ....*...
      ...**...
      ........
    FILE
  end
end
