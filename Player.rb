module MathGame

  class Player
    attr_accessor :lives, :name

    def initialize(name)
      @name = name
      @lives = 3
    end

    def correct_answer
      @lives += 0
    end

    def wrong_answer
      @lives -= 1
    end

  end

end