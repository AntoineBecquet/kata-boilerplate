describe LifeArray do
  it "compute next gen" do
    life_array = LifeArray.new(fixture("input1"))
    life_array.iter!
    expect(life_array.to_s).to eq(fixture("result1"))
  end
end
