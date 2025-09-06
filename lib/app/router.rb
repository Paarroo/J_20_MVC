require 'controller'
class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform
    puts '🎭 Welcome petite comère ! 🎭'
    puts "\n🤔 Que veux tu faire ?"
    while true
      puts "    "
      puts "1. ✍️  Créer un gossip."
      puts '2. 👀 Consulter un gossip.'
      puts '3. 🗑️  Supprimer un gossip.'
      puts "4. 👋 Quitter l'app."
      print "⚡ > "
      input = gets
      parametre = (input&.chomp || "").to_i
      case parametre
      when 1
        puts '🎉 Parfait, créons un gossip !'
        @controller.create_gossip
      when 2
        puts "🚀 Let's goooo !"
        puts "    "
        @controller.index_gossips
      when 3
        puts "💥 Supprimons le !"
        puts '   '
        @controller.destroy_gossip
      when 4
        puts '👋 Ciao bambino..'
        break
      else
        puts '❌ Mauvaise saisie coco..'
        puts "🔄 Parfois il faut s'y reprendre à plusieurs reprises.."
      end
    end
  end
end
