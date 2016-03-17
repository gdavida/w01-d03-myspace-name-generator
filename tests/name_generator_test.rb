require_relative '../lib/myspace_name_generator.rb'

# Define whatever methods you need first

# Now run your actual tests, making sure to do output as necessary


def assert(bool, message)
  if bool
    puts ":)"
  else
    puts message
  end
end

def refute(bool, message)
  if !bool
    puts ":)"
  else
    puts message
  end
end

# Think about:

# Valid strings
# All-Caps strings
# Lower-case strings
# Strings with mostly punctuation
# Empty Strings
# Strings containing numbers




# FIRST TEST
# my_name("Davida", "Gaffney")
# expect "xX_DaViDaGaFfNeY_Xx"
result = generate_myspace_name("Davida", "Gaffney")
assert("xX_DaViDaGaFfNeY_Xx" == result, "expected true, but your method returned false")


# # # SECOND TEST
# my_name("TONYA", "CARPENTER")
# expect "xX_ToNyAcArPeNtEr_Xx"
result = generate_myspace_name("TONYA", "CARPENTER")
assert("xX_ToNyAcArPeNtEr_Xx" == result, "expected true, but your method returned false")


# # # THIRD TEST
# my_name("andrew", "ek")
# "xX_AnDrEwEk_Xx"
result = generate_myspace_name("andrew", "ek")
assert("xX_AnDrEwEk_Xx" == result, "expected true, but your method returned false")


# # # Fourth Test
# my_name("123", "4567")
# expect "xX_1234567_Xx"
result = generate_myspace_name("123", "4567")
assert("xX_1234567_Xx" == result, "expected true, but your method returned false")


# # # Fifth Test
# my_name("", "")
# expect "xX__Xx"
result = generate_myspace_name("", "")
assert("xX__Xx" == result, "expected true, but your method returned false")


