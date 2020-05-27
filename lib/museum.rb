class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
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
end
