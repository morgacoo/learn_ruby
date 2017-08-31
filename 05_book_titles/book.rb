class Book
  attr_reader :title

  # Define this constant array just once
  @@SPECIAL_WORDS = %w(and in the of a an)

  def title=(title)
    @title = title.split.each_with_index.map do |w,i|
      case
        when i == 0 || !@@SPECIAL_WORDS.include?(w)
          # Capitalize the first word and all subsequent non-special words
          w.capitalize
        else
          w
      end
    end.join(' ')
  end
end
