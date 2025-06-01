require 'csv'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossips.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("db/gossips.csv").each do |ligne_csv|
      gossip_read = self.new(ligne_csv[0], ligne_csv[1])
      all_gossips << gossip_read
    end
    all_gossips
  end

  def self.destroy(index)
    lines = CSV.read("db/gossips.csv")
    lines.delete_at(index)
    CSV.open("db/gossips.csv", "w") do |csv|
      lines.each { |line| csv << line }
    end
  end
end
