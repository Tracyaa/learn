require './lib/intro_to_arrays.rb'
describe "working with arrays" do

  context 'instantiating' do
    describe "#instantiate_new_array" do
      #the variables that begin with the '@' symbol are called instance variables. 
      #We'll learn more about them when we get to object orientation. 
      #For now, just know that creating an instance variable inside our describe block 
      #means we can access that variable anywhere inside the block.
      before(:each) do
        @my_new_array = instantiate_new_array
      end
      
      it "creates a new array and returns it" do
        expect(@my_new_array).to be_an(Array)
      end

      it "returns an array that is empty" do
        size = @my_new_array.size 
        expect(size).to eq(0)
      end
    end
    
    describe "#array_with_two_elements" do
      before(:each) do 
        @my_two_array = array_with_two_elements
      end 
      
      it "creates a new array with two elements in it and returns that array" do
        expect(@my_two_array).to be_an(Array)
      end

      it "returns an array that has 2 objects in it" do
        size = @my_two_array.size
        expect(size).to eq(2)
      end
    end
  end

  context 'indexing' do
    before(:each) do
      @taylor_swift = ["Welcome to New York", "Blank Space", "Style", "Out of The Woods"]
    end
    
    describe "#first_element" do
      it "takes in an argument of an array and returns the first element in the array using its positive index" do
        my_first_element = first_element(@taylor_swift)
        expect(my_first_element).to eq("Welcome to New York")
      end
    end

    describe "#third_element" do 
      it "takes in an argument of an array and returns the third element in the array using its positive index" do
        my_third_element = third_element(@taylor_swift)
        expect(my_third_element).to eq("Style")
      end
    end

    describe "#last_element" do
      it "takes in an argument of an array and returns the last element in the array using its negative index" do
        my_last_element = last_element(@taylor_swift)
        expect(my_last_element).to eq("Out of The Woods")
      end
    end
  end

  context 'using ruby array methods to return values from an array' do
    before(:each) do
      @south_east_asia = ["Thailand", "Cambodia", "Singapore", "Myanmar"]
    end
    
    describe "#first_element_with_array_methods" do 
      it 'takes in an argument of an array and returns the first element in the array, without referencing the index number of that element' do
        first_country = first_element_with_array_methods(@south_east_asia)
        expect(first_country).to eq("Thailand")
      end
    end

    describe "#last_element_with_array_methods" do
      it 'takes in an argument of an array and returns the last element in the array, wihtout referencing the index number' do
        last_country = last_element_with_array_methods(@south_east_asia)
        expect(last_country).to eq("Myanmar")
      end
    end
  end

  context 'using ruby array methods to get information about an array' do
    before(:each) do
      @programming_languages = ["Ruby", "Javascript", "Python", "C++", "Java", "Lisp", "PHP", "Clojure"]
    end

    describe "#length_of_array" do
      it 'takes in an argrument of an array and returns the length of the array' do
        length = length_of_array(@programming_languages)
        expect(length).to eq(8)
      end
    end
  end


end
