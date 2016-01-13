class Barracks

  attr_accessor :gold, :food

  def initialize(gold=1000, food=80)
    @gold = gold
    @food = food
  end

  def can_train_footman?
    if gold >= 135 && food >= 2
      true
    else 
      nil
    end
  end

  def train_footman
    if can_train_footman? true
      @gold -= 135 
      @food -= 2
      Footman.new
    else 
      nil
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      true
    else 
      nil
    end
  end

  def train_peasant
    if can_train_peasant? 
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end

end