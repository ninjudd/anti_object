class AntiObject
  VERSION = '0.5.0'

  def initialize(object)
    @object = object
  end

  def ~
    @object
  end

  def anti?
    not super
  end
end

class Object
  def ~
    AntiObject.new(self)
  end

  def anti?
    false
  end
end
