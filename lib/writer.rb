class Writer
  def initialize
  end

  def write_lines
    result = braille_text.reduce(result) do |accum, letter|
      if letter
        accum += letter[i]
      else
        accum += "  "
      end
      # accum += letter ? letter[i] : '  '
      # accum +
  end
  end
end
