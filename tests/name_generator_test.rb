require_relative '../lib/name_generator.rb'

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
 
# Andrew Ek => xX_AnDrEwEk_Xx
# davida Gaffney => xX_DaViDaGaFfNeY_Xx
# tonyaCarpenter => xX_ToNyAcArPeNtEr_Xx
# xX__Xx
# xX__Xx
# xX__Xx


# FIRST TEST
result = my_name("Davida", "Gaffney")
assert(result, "xX_DaViDaGaFfNeY_Xx")

# # SECOND TEST
result = validate_triangle("Andrew" "Ek")
assert(result, "xX_AnDrEwEk_Xx")

# # THIRD TEST
# result = validate_triangle(5, 6, 12)
# refute(result, "5,6,12 passed, but should have failed")

# # Fourth Test
# result = validate_triangle(12, 6, 5)
# refute(result, "12, 6, 5 passed, but should have failed")
