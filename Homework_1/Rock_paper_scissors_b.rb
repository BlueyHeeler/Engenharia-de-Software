class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
class WrongNumberOfPlayersTournamentError < StandardError ; end

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

def rps_tournament_winner(tournament)
    raise WrongNumberOfPlayersTournamentError unless Math.log2(tournament.length) % 1 == 0
    while tournament.length > 1
        next_round = []
        n = tournament.length - 1
        for i in (0..n).step(2)
            next_round.append([rps_game_winner(tournament[i]), rps_game_winner(tournament[i+1])])
        end
        tournament = next_round
    end
    return rps_game_winner(tournament[0])
end


puts(rps_tournament_winner([
                             [ ["Kristen", "P"], ["Dave", "S"] ],
                             [ ["Richard", "R"], ["Michael", "S"] ],
                             [ ["Allen", "S"], ["Omer", "P"] ],
                             [ ["David E.", "R"], ["Richard X.", "P"] ]
                           ]))
