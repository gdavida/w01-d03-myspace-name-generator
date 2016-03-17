
require "pry"

### 1 NAMES TO STRING
##################################
#		Takes two strings and turns them into one string
#
#		first: string with the first name
# 	last: string with last name
#
# 	returns one string
#
# 	example:
# 	names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#

def names_to_string(first,last)
	"#{first}#{last}"
end








# ### 2 STRING TO ARRAY
##################################
#		Takes returned string from Step 1 and turns into array
#
#		names_to_string: the two names made into one name in step 1
#
# 	returns an array with each character as a seperate value
#
# 	example:
# 	string_to_array(DavidaGaffney)
# => ["D", "a", "v", "i", "d", "a", "G", "a", "f", "f", "n", "e", "y"]
# ---------------------------------
#
def string_to_array(names_to_string)
 	names_to_string.split("")
end








### 3 ADD UPCASES AND DOWNCASES TO ARRAY
##################################
#		Takes returned array from Step 2 and turns array(odd)-downcase and array(even)-upcase
#
#		string_to_array: the array from Step 2
#
# 	returns an array with every other character either capitalized or lowercased
#
# 	example:
# 	add_cases_to_array(["D", "a", "v", "i", "d", "a", "G", "a", "f", "f", "n", "e", "y"])
# => ["D", "a", "V", "i", "D", "a", "G", "a", "F", "f", "N", "e", "Y"]
# ---------------------------------
#
def add_cases_to_array(string_to_array)
  string_to_array.map.with_index { |n, i| i.even? ? n.upcase : n.downcase }
end








### 4 FINALIZE ARRAY CONTENT
##################################
#		Takes returned array from Step 3 and add xX_ to front of array and Xx_ to end of array
#
#		add_cases_to_array: the array from Step 3
#
# 	returns an array with xX_ at array(0) and Xx_ at array(-1)
#
# 	example:
# 	finalize_array(["D", "a", "V", "i", "D", "a", "G", "a", "F", "f", "N", "e", "Y"])
# => ["xX_", "D", "a", "V", "i", "D", "a", "G", "a", "F", "f", "N", "e", "Y", "_Xx"]
# ---------------------------------
#
def finalize_array(add_cases_to_array)
	add_cases_to_array.unshift("xX_")
	add_cases_to_array<<"_Xx"
end








### 5 TURN FINALIZED ARRAY INTO FINAL STRING
##################################
#		Takes returned array from Step 4 and turns into a string with no spaces

#		finalize_array: the array from Step 4
#
# 	returns a string 
#
# 	example:
# 	array_to_final_string(["xX_", "D", "a", "V", "i", "D", "a", "G", "a", "F", "f", "N", "e", "Y", "_Xx"])
# => xX_DaViDaGaFfNeY_Xx
# ---------------------------------
#
def array_to_final_string(finalize_array)
	finalize_array.join
end








### 6 RETURN NEW STRING
##################################
#		Take names and myspace styles them
#
#		first: string with the first name
# 	last: string with last name
#
# 	returns name with special myspace styling
#
# 	example:
# 	generate_myspace_name("Davida", "Gaffney")
# => xX_DaViDaGaFfNeY_Xx
# ---------------------------------
#
def generate_myspace_name(first, last)
	result = names_to_string(first,last)
	result = string_to_array(result)
	result = add_cases_to_array(result)
	result = finalize_array(result)
	result = array_to_final_string(result)

	return result #not  necessary, it will return anyway
end




binding.pry




