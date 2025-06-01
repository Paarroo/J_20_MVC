require 'gossip'
class View
  def create_gossip
    puts "\n👤 Quel est ton prénom ?"
    print "✨ > "
    author = gets.chomp
    puts "\n💬 Q'as tu d'intéressant à me raconter ?\n"
    print "🔥 > "
    content = gets.chomp
    puts "🌶️ C'est croustillant ! 🌶️"
    return { author: author, content: content }
  end

  def index_gossips(gossips)
    puts "📰 Voici les gossips :\n"
    if gossips.empty?
      puts "😴 Il n'y a rien à voir ici.."
    else
      gossips.each_with_index do |gossip, i|
        puts "#{i + 1}. 👤 #{gossip.author}, nous partage : 💭 #{gossip.content}"
      end
    end
  end

  def index_to_delete
    puts "\n🎯  Quel gossip veux tu supprimer ?"
    while true
      puts "🔢 Entre le numéro du gossip maintenant :"
      print "⚡ > "
      input = gets.chomp.to_i
      total_gossips = Gossip.all.length
      if input >= 1 && input <= total_gossips
        puts "\n✅ Le gossip a été supprimé avec succès !! 🎉\n"
        return input - 1
      else
        puts "⚠️ Donne un numéro de ligne valide coco 🤪"
      end
    end
  end
end
