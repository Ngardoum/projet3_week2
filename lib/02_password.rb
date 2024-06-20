# lib/02_password.rb

def signup
    print "Définissez votre mot de passe : "
    password = gets.chomp
    return password
  end
  
  def login(stored_password)
    print "Veuillez entrer votre mot de passe : "
    input_password = gets.chomp
  
    while input_password != stored_password
      puts "Mot de passe incorrect. Veuillez réessayer."
      print "Veuillez entrer votre mot de passe : "
      input_password = gets.chomp
    end
  end
  
  def welcome_screen
    puts "Bienvenue dans la zone secrète !"
    puts "Voici quelques informations top secrètes de la NSA :"
    puts "- Les textos de Ramsès II révèlent qu'il adorait les chats."
    puts "- Edward Snowden préfère le café au thé."
    puts "- Les pyramides sont en fait des anciens réservoirs de Wi-Fi."
  end
  
  def perform
    password = signup
    login(password)
    welcome_screen
  end
  
   