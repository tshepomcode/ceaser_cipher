require 'pry'

def ceaser_cipher(string, num)
  cipher_arr = []

  # provide a-z and A-Z arrays
  arr_az_AZ = ("a".."z").to_a + ("A".."Z").to_a
  
  #strip string to character array
  string_arr = string.split("")

# for each element of string, check string exists in a-z, A-Z
string_arr.each.with_index do |letter, index|
  # puts "check if exists in a-z"
  # puts "#{letter}: [#{index}]"
  if arr_az_AZ.include?(letter)
    # puts "We found \"#{letter}\" at position #{arr_az_AZ.index(letter)} in a-z and A-Z"
    # add the shift to locate the shifted character
    char_pos = arr_az_AZ.index(letter)
    #p "char_pos = #{char_pos}"
    if (char_pos >= 0 && char_pos <= 25)
      # puts "The letter #{letter} is in small caps"
      char_new_pos = char_pos + num
      if char_new_pos > 25
        char_new_pos = (char_new_pos - 25)
        # puts "new position is #{char_new_pos} which is letter #{arr_az_AZ[char_new_pos]}"
        cipher_arr[index] = arr_az_AZ[char_new_pos]
      else
        # puts "New position is #{char_new_pos} which is letter #{arr_az_AZ[char_new_pos]}"
        cipher_arr[index] = arr_az_AZ[char_new_pos]
      end
    elsif (char_pos >= 26 && char_pos <= 51)
      # puts "The letter #{letter} is in caps"
      char_new_pos = char_pos + num
      if char_new_pos > 51
        char_new_pos = (char_new_pos - 51) + 25
        # puts "new position is #{char_new_pos} which is letter #{arr_az_AZ[char_new_pos]}"
        cipher_arr[index] = arr_az_AZ[char_new_pos]
      else
        # puts "New position is #{char_new_pos} which is letter #{arr_az_AZ[char_new_pos]}"
        cipher_arr[index] = arr_az_AZ[char_new_pos]
      end
    end
  else
    #puts "Not a letter: #{letter}"
    cipher_arr << letter
  end
end

string_cipher = cipher_arr.join
puts string_cipher

end


ceaser_cipher("What a string!", 5)
