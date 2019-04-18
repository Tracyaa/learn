describe 'keys_of' do

  let(:animals) { {"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"} }
    
  it "returns an array" do
    expect(animals.keys_of('Panama').class).to eq(Array)
  end

  it "returns red-footed tortoise in an array for the animal hash when passed the argument 'Panama'" do
    result = animals.keys_of('Panama')
    expect(result).to include("red-footed tortoise")
    expect(result.length).to eq(1)
  end

  it "returns two species in an array for the animal hash when passed the argument 'Madagascar'" do
    result = animals.keys_of('Madagascar')
    ["aye-aye", "tomato frog"].each {|animal| expect(result).to include(animal) }
    expect(result.length).to eq(2)
  end

  it "returns three species in an array for the animal hash when passed the argument 'Australia'" do
    result = animals.keys_of('Australia')
    ["sugar glider", "kangaroo", "koala"].each {|animal| expect(result).to include(animal) }
    expect(result.length).to eq(3)
  end

  it 'returns the keys of the entered value' do
    result = {a: 1, b: 2, c: 3}.keys_of(1)
    expect(result).to include(:a)
    expect(result.length).to eq(1)
  end

  it 'returns the keys of the entered value' do
    result = {a: 1, b: 2, c: 3, d: 1}.keys_of(1)
    [:a, :d].each { |key| expect(result).to include(key) }
    expect(result.length).to eq(2)
  end

  it 'can accept multiple arguments (values) and return the keys that match one value or the other' do
    result_1 = animals.keys_of('Australia', 'Panama')
    matched_keys = ["sugar glider", "kangaroo", "koala", "red-footed tortoise"]
    matched_keys.each {|a| expect(result_1).to include(a) }
    expect(result_1.length).to eq(4)

    result_2 = {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)
    [:a, :b, :d].each { |key| expect(result_2).to include(key) }
    expect(result_2.length).to eq(3)
  end

end