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
    begin
      CSV.read("db/gossips.csv").each do |ligne_csv|
        next if ligne_csv.empty? || ligne_csv.all?(&:nil?) || ligne_csv.all?(&:empty?)
        gossip_read = self.new(ligne_csv[0], ligne_csv[1])
        all_gossips << gossip_read
      end
    rescue Errno::ENOENT
      # File doesn't exist yet, return empty array
    rescue CSV::MalformedCSVError
      # CSV is corrupted, return empty array  
    end
    all_gossips
  end

  def self.destroy(index)
    begin
      lines = CSV.read("db/gossips.csv")
      lines.delete_at(index)
      CSV.open("db/gossips.csv", "w") do |csv|
        lines.each { |line| csv << line }
      end
    rescue Errno::ENOENT
      # File doesn't exist, nothing to delete
    rescue CSV::MalformedCSVError  
      # CSV is corrupted, can't delete safely
    end
  end
end
