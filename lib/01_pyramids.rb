# lib/01_pyramids.rb

def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    n = gets.chomp.to_i
  
    puts "Voici la pyramide :"
    (1..n).each do |i|
      puts " " * (n - i) + "#" * i
    end
  end
  
  def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    n = gets.chomp.to_i
  
    puts "Voici la pyramide :"
    (1..n).each do |i|
      puts " " * (n - i) + "#" * (2 * i - 1)
    end
  end
  
  def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
    print "> "
    n = gets.chomp.to_i
  
    if n.even?
      puts "Nombre pair détecté. Veuillez entrer un nombre impair."
      return
    end
  
    puts "Voici la pyramide :"
    half = (n / 2) + 1
  
    (1..half).each do |i|
      puts " " * (half - i) + "#" * (2 * i - 1)
    end
  
    (half - 1).downto(1) do |i|
      puts " " * (half - i) + "#" * (2 * i - 1)
    end
  end
  