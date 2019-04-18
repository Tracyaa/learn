describe "my_collect" do
  let(:languages) { ['ruby', 'javascript', 'python', 'objective-c'] }
  let(:students) { ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'] }

  it "can handle an empty collection" do
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
    expect(counter).to eq(0)
  end

  it "yields the correct element from a given collection, in this case languages" do
    my_collect(languages) do |language|
      expect(language).to_not eq(nil)
    end
  end

  it "returns a new collection of appropriately modified elements, in this case capitalized languages" do
    expect(my_collect(languages) do |language|
      language.upcase
    end).to eq(["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
  end

  it 'does not modify the original collection' do
    my_collect(languages) do |language|
      language.upcase
    end
    expect(languages).to eq(['ruby', 'javascript', 'python', 'objective-c'])
  end

  it "yields the correct element from the given collection, in this case students" do
    my_collect(students) do |student|
      expect(student).to_not eq(nil)
    end
  end

  it "returns a new collection of appropriately modified elements, in this case student first names" do
    expect(my_collect(students) do |student|
      student.split(" ").first
    end).to eq(["Tim", "Tom", "Sophie", "Antoin"])
  end

  it 'does not modify the original collection' do
    my_collect(students) do |student|
      student.split(" ").first
    end
    expect(students).to eq(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'])
  end
end
