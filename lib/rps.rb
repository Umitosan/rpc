
class String
  define_method(:beats) do |play1, play2|

    winner = "no player"

    winner_hash = {
      'rock scissors' => "Player 1 wins!",
      'rock paper' => "Player 2 wins!",
      'paper scissors' => "Player 2 wins!",
      'rock scissors' => "Player 1 wins!",
      'scissors rock' => "Player 2 wins!",
      'scissors paper' => "Player 1 wins!"
    }

    if (play1 == play2)
      winner = "its a tie"
    else
      both_plays = (play1 + " " + play2)
      winner = winner_hash[both_plays]
    end

    winner
  end
end


#  OLDER VERSION
# class String
#   define_method(:beats) do |play1, play2|
#
#     player1_wins = "dunno"
#     winner = "no player"
#
#     winner_hash = {
#       'rock scissors' => true,
#       'rock paper' => false,
#       'paper scissors' => false,
#       'rock scissors' => true,
#       'scissors rock' => false,
#       'scissors paper' => true
#     }
#
#     if (play1 == play2)
#       winner = "its a tie"
#     else
#       both_plays = (play1 + " " + play2)
#       player1_wins = winner_hash[both_plays]
#       if player1_wins
#         winner = "Player 1 wins!"
#       elsif (player1_wins == false)
#         winner = "Player 2 wins!"
#       else
#         winner = "errors"
#       end
#       winner
#     end
#
#     winner
#   end
# end
