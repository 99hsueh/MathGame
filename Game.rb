require './Player'
require './Question'
require 'timeout'

module MathGame

  class Game

    def turns(current_player, player1, player2)
      current_player == player1 ? current_player = player2 : current_player = player1

    end

    def start
      player1 = Player.new "Player A"
      player2 = Player.new "Player B"
      puts "Game Started!"
      current_player = player1
      while player1.lives > 0 && player2.lives > 0 do
        question = MathGame::Question.new()
        puts  "#{current_player.name} :"
        puts "#{question.the_question}"
        answer = $stdin.gets.chomp
        if question.the_answer(answer) == true
          current_player.correct_answer
          puts "good job buddy"
          puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
          puts "--------"
          sleep 1
        else
          current_player.wrong_answer
          puts "for real?"
          puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
          puts "--------"
          sleep 1

        end
        current_player = turns(current_player, player1, player2)
      end
        puts "GG, winner is #{current_player.name}"
    end

  end

end

MathGame::Game.new().start