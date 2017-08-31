
def echo(x)
  x
end


def shout(x)
  x.upcase
end

def repeat(x,num=2)
  (x + ' ') * (num - 1)+ x
end

def start_of_word(str,num)
x=[] #creates array
num=num-1
	while num>=0 #will run once for first letter, will run twice for second letter
	x.push(str[num])
	num=num-1 #accounts for zero based counting
	end
  x.reverse.join #the while loops pushed the numbers in reverse order so have to reverse it to get first letter first
end

def first_word(str)
  x = str.split(/ /)
  x[0]
end

def titleize(x)
	little_words=["and","over","the", "an", "a", "but", "or", "of", "for"] #little words not to capitalize
	title_array=x.split(" ") # split title into array
	title_array.each do |word| #for each word in the array
	word.capitalize! unless little_words.include?(word) #capitalize it unless it's in the little_words array
	end
	title_array[0].capitalize! #make sure the first word is capitalized
	title_array.join(" ")
end


=begin
TEST SPEC


# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the **first**
#

require "simon_says"

describe "Simon says" do
  describe "echo" do
    it "should echo hello" do
      expect(echo("hello")).to eq("hello")
    end

    it "should echo bye" do
      expect(echo("bye")).to eq("bye")
    end
  end

  describe "shout" do
    it "should shout hello" do
      expect(shout("hello")).to eq("HELLO")
    end

    it "should shout multiple words" do
      expect(shout("hello world")).to eq("HELLO WORLD")
    end
  end

  describe "repeat" do
    it "should repeat" do
      expect(repeat("hello")).to eq("hello hello")
    end

    # Wait a second! How can you make the "repeat" method
    # take one *or* two arguments?
    #
    # Hint: *default values*
    it "should repeat a number of times" do
      expect(repeat("hello", 3)).to eq("hello hello hello")
    end
  end

  describe "start_of_word" do
    it "returns the first letter" do
      expect(start_of_word("hello", 1)).to eq("h")
    end

    it "returns the first two letters" do
      expect(start_of_word("Bob", 2)).to eq("Bo")
    end

    it "returns the first several letters" do
      s = "abcdefg"
      expect(start_of_word(s, 1)).to eq("a")
      expect(start_of_word(s, 2)).to eq("ab")
      expect(start_of_word(s, 3)).to eq("abc")
    end
  end

  describe "first_word" do
    it "tells us the first word of 'Hello World' is 'Hello'" do
      expect(first_word("Hello World")).to eq("Hello")
    end

    it "tells us the first word of 'oh dear' is 'oh'" do
      expect(first_word("oh dear")).to eq("oh")
    end
  end

  describe "titleize" do
    it "capitalizes a word" do
      expect(titleize("jaws")).to eq("Jaws")
    end

    it "capitalizes every word (aka title case)" do
      expect(titleize("david copperfield")).to eq("David Copperfield")
    end

    it "doesn't capitalize 'little words' in a title" do
      expect(titleize("war and peace")).to eq("War and Peace")
    end

    it "does capitalize 'little words' at the start of a title" do
      expect(titleize("the bridge over the river kwai")).to eq("The Bridge over the River Kwai")
    end
  end

end
