class Museum
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
end
