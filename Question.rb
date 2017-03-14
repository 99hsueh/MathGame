module MathGame

  class Question
    def initialize
      @x = rand(1..20)
      @y = rand(1..20)
      @answer = @x + @y
    end

    def the_question
      puts "What does #{@x} plus #{@y} equal?"
    end

    def the_answer(input)
      input.to_i == @answer ? true : false
    end

  end

end

