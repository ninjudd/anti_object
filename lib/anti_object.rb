class AntiObject
  VERSION = '0.6.0'

  def initialize(object)
    @object = object
  end

  def ~
    @object
  end

  def anti?
    not super
  end

  def method_missing(method_name, *args)
    method_name = method_name.to_s

    if method_name =~ /\?$/
      !(~self).send(method_name, *args)
    else
      raise NoMethodError.new("undefined method `#{method_name}' for #{self}")
    end
  end
end

class Object
  def ~
    AntiObject.new(self)
  end
end
