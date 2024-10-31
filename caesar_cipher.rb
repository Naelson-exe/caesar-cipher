def caesar_cipher(string, number)
  arr = string.split("")
  caesar_cipher = arr.map do |element|
    pos = element.ord 

    if (pos > 96 && pos < 123) || (pos > 64 && pos < 91) || (pos > 47 && pos < 58)
      new_pos = pos + number

      # Allow the strings to wrap 
      if (new_pos > 122) 
        new_pos = 97 + (new_pos - 123)  # Lowercase wrap
      elsif (new_pos > 90 && pos < 91) 
        new_pos = 65 + (new_pos - 91)   # Uppercase wrap
      elsif (new_pos > 57 && pos > 47) 
        new_pos = 48 + (new_pos - 58)   # Number wrap
      end

      char = new_pos.chr
      char  
    else
      element  
    end
  end
  
  caesar_cipher.join  
end