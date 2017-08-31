
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
