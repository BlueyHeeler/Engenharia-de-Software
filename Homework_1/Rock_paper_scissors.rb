class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    validos = ["R", "P", "S"]
    raise WrongNumberOfPlayersError unless game.length == 2
    raise NoSuchStrategyError unless (validos.include?(game[0][1]) && validos.include?(game[1][1]))
    if game[0][1] == "R"
        if game[1][1] == "P"
            return game[1]
        elsif game[1][1] == "S"
            return game[0]
        else
            return game[0]
        end
    elsif game[0][1] == "P"
        if game[1][1] == "R"
            return game[0]
        elsif game[1][1] == "S"
            return game[1]
        else
            return game[0]
        end
    else
        if game[1][1] == "R"
            return game[1]
        elsif game[1][1] == "P"
            return game[0]
        else
            return game[0]
        end
    end
end

puts rps_game_winner([[ "Kristen", "R" ], [ "Pam", "R" ] ])
puts rps_game_winner([[ "Kristen", "R" ], [ "Pam", "P" ] ])
puts rps_game_winner([[ "Kristen", "R" ], [ "Pam", "S" ] ])
puts rps_game_winner([[ "Kristen", "P" ], [ "Pam", "R" ] ])
puts rps_game_winner([[ "Kristen", "P" ], [ "Pam", "P" ] ])
puts rps_game_winner([[ "Kristen", "P" ], [ "Pam", "S" ] ])
puts rps_game_winner([[ "Kristen", "S" ], [ "Pam", "R" ] ])
puts rps_game_winner([[ "Kristen", "S" ], [ "Pam", "P" ] ])
puts rps_game_winner([[ "Kristen", "S" ], [ "Pam", "S" ] ])

