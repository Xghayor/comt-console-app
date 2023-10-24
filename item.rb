class Item
  attr_accessor :name, :author

  def initialize(name)
    @name = name
    @author = nil
  end

  def author=(author)
    @author = author
  end
end
