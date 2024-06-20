# lib/03_stairway.rb

def roll_dice
    rand(1..6)
  end
  
  def play_game
    step = 0
    turns = 0
  
    while step < 10
      dice = roll_dice
      turns += 1
  
      if dice == 5 || dice == 6
        step += 1
        puts "Vous avez fait #{dice}. Vous avancez d'une marche. Vous êtes maintenant sur la marche #{step}."
      elsif dice == 1
        step -= 1 if step > 0
        puts "Vous avez fait #{dice}. Vous descendez d'une marche. Vous êtes maintenant sur la marche #{step}."
      else
        puts "Vous avez fait #{dice}. Vous restez sur la marche #{step}."
      end
    end
  
    puts "Bravo ! Vous avez atteint la 10ème marche en #{turns} tours !"
    return turns
  end
  
  def average_finish_time(games_count = 100)
    total_turns = 0
  
    games_count.times do
      total_turns += play_game
    end
  
    average_turns = total_turns.to_f / games_count
    puts "Le nombre moyen de tours pour atteindre la 10ème marche est de #{average_turns.round(2)} après #{games_count} parties."
    return average_turns
  end
  
  def perform
    play_game
    average_finish_time
  end
  