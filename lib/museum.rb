require './lib/patron'
class Museum < Patron
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    #iteration 3
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recomendations = []
    recomendations << @exhibits.find_all do |exhibit|
      patron.interest.any?(exhibit.name)
    end
    recomendations.flatten
  end
  # Iteration 3
  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    @exhibits.to_h do |exhibit|
      #require 'pry'; binding.pry
      [exhibit, @patrons.
    end
  end
end
