
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
def names_to_array(first,last)
	"#{first}#{last}".downcase!
	full_name.split("")
end


# ### 2 take downcase strings and turn into array of letters only
# def change_cases(names_to_array)
# 	names_to_array.each {|i| if i % 2 == 0 i.upcase! }
# end



### 3 take array of lowercase and turn into array with array(odd) upcase
def add_uppercase_to_array(name_to_array)
		name_to_array.gsub /..?/, &:capitalize
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
	result = names_to_array(first, last)
	result = add_uppercase_to_array(result)
	result = finalize_array(result)
	result = array_to_string(result)

	return result #not  necessary
end




binding.pry






# ### 1 take strings and downcase
# def full_name(first,last)
# 	"#{first}#{last}".downcase!
# end


# ### 2 take downcase strings and turn into array of letters only
# def name_to_array(full_name)
# 	full_name.split("")
# end



# ### 3 take array of lowercase and turn into array with array(odd) upcase
# def add_uppercase_to_array(name_to_array)
# 		["D", "a", "V", "i", "D", "a"]
# end

# ### 4 unshift xX_ to add of front of array and << (push) Xx_ to add to end of array
# def finalize_array(add_uppercase_to_array)
# 	add_uppercase_to_array.unshift("xX_")
# 	add_uppercase_to_array<<"_Xx"
# end

# ### 5 turn back into string

# def final_myspaced_name(finalize_array)
# 	finalize_array.join
# end

# ### RETURN NEW STRING
# ### xX_DaViDaGaFfNeY_Xx