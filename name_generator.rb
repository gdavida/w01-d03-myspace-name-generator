
require "pry"



#
#		------description------
#
#		Take names and myspace style them
#
#		------parameters------
#
#		first: string with the first name
# 	last: string with last name
#
#		------what gets returned------
#
#		xX_DaViDaGaFfNeY_Xx
#
# #

# a = [ "a", "b", "c" ]
# a.each_index {|x, y|  y.upcase }


# arr = [1, 2, 3, 4, 5, 6]
# arr.select { |a| a > 3 }     #=> [4, 5, 6]
# arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
# arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
# arr                          #=> [1, 2, 3, 4, 5, 6]


### 1 take strings and downcase
def full_name(first,last)
	"#{first}#{last}".downcase!
end


### 2 take downcase strings and turn into array of letters only
def name_to_array(full_name)
	full_name.split("")
end



### 3 take array of lowercase and turn into array with array(odd) upcase
def add_uppercase_to_array(name_to_array)
end



### 4 unshift xX_ to add of front of array and << (push) Xx_ to add to end of array
def cased_array(name_to_array)
	name_to_array.unshift("xX_")
	name_to_array<<"_Xx"
end

### 5 turn back into string


### RETURN NEW STRING
### xX_DaViDaGaFfNeY_Xx

binding.pry