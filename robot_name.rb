class Robot

  @@all_names = []

  attr_reader :name
  
  def initialize
    @name = generate_uniqe_name
    @name = generate_uniqe_name
    @@all_names << @name
  end

  def self.forget
    @name = nil
    @@all_names = []
  end

  def reset
    initialize
  end

  private

  def generate_uniqe_name
    name = [*('A'..'Z')].sample(2).join.to_s + [*(0..9)].sample(3).join
    while (@@all_names.include? name) do
      name = [*('A'..'Z')].sample(2).join.to_s + [*(0..9)].sample(3).join      
    end
    name
  end
end
