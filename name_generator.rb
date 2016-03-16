
require "pry"



#
#		------description------
#
#		Take name and turn into one array of letters
#
#		------parameters------
#
#		first: string with the first name
# 	last: string with last name
#
#		------what gets returned------
#
#		returns array with letters of full name seperated by each letter into a seperate value
#
#


def names_into_array(first, last)
	name_string = "#{first}#{last}"
	name_string.split("")
end


binding.pry