
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


### 1 take strings and turns into one string
def names_to_string(first,last)
	"#{first}#{last}"
end


# ### 2 take strings and turn into array with one character per key/value
def string_to_array(names_to_string)
 	names_to_string.split("")
end


### 3 take array of lowercase and turn into array with array(odd) upcase
def add_uppercase_to_array(string_to_array)
  string_to_array.map.with_index { |n, i| i.even? ? n.upcase : n.downcase }
end

end

### 4 unshift xX_ to add of front of array and << (push) Xx_ to add to end of array
def finalize_array(add_uppercase_to_array)
	add_uppercase_to_array.unshift("xX_")
	add_uppercase_to_array<<"_Xx"
end

### 5 turn back into string

def array_to_string(finalize_array)
	finalize_array.join
end

### 6 RETURN NEW STRING
### xX_DaViDaGaFfNeY_Xx

def generate_myspace_name(first, last)
	result = names_to_string(first,last)
	result = string_to_array(result)
	result = add_uppercase_to_array(result)
	result = finalize_array(result)
	result = array_to_string(result)

	return result #not  necessary
end




binding.pry




