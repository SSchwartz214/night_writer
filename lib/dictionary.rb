class Dictionary

  BRAILLE_TO_ENGLISH = {
    ["0.","..",".."] => "a",
    ["0.","0.",".."] => "b",
    ["00","..",".."] => "c",
    ["00",".0",".."] => "d",
    ["0.",".0",".."] => "e",
    ["00","0.",".."] => "f",
    ["00","00",".."] => "g",
    ["0.","00",".."] => "h",
    [".0","0.",".."] => "i",
    [".0","00",".."] => "j",
    ["0.","..","0."] => "k",
    ["0.","0.","0."] => "l",
    ["00","..","0."] => "m",
    ["00",".0","0."] => "n",
    ["0.",".0","0."] => "o",
    ["00","0.","0."] => "p",
    ["00","00","0."] => "q",
    ["0.","00","0."] => "r",
    [".0","0.","0."] => "s",
    [".0","00","0."] => "t",
    ["0.","..","00"] => "u",
    ["0.","0.","00"] => "v",
    [".0","00",".0"] => "w",
    ["00","..","00"] => "x",
    ["00",".0","00"] => "y" ,
    ["0.",".0","00"] => "z",
    ["..","..",".0"] => ("").capitilize
  }

  def encode(text)
    letters = text.split("")
    braille_chars = letters.map do |character|
      if character == character.downcase
        print_rows(ENGLISH_TO_BRAILLE[character])
      else
        print_rows(ENGLISH_TO_BRAILLE.fetch(:shift))
        print_rows(ENGLISH_TO_BRAILLE[character.downcase])
      end
    end
    braille_chars.join("\n")
  end

  def print_rows(braille_text)
    # row_1 = first_element_in_array(braille_text)[0]
    # row_2 = second_element_in_array(braille_text)[0]
    # row_3 = third_element_in_array(braille_text)[0] + "/n"

# [3] pry(#<Dictionary>)> ENGLISH_TO_BRAILLE[char]
# => ["0.", "00", ".."]
# [4] pry(#<Dictionary>)> ENGLISH_TO_BRAILLE[char][0]
# => "0."
# [5] pry(#<Dictionary>)> ENGLISH_TO_BRAILLE[char][1]
# => "00"
# [6] pry(#<Dictionary>)> ENGLISH_TO_BRAILLE[char][2]
# => ".." need a new line


    #find a way to save the rows. Then add on to the first row, second row, then third row for the next braille char.
    #scope
  end
end
