require 'test/unit'
require File.dirname(__FILE__) + '/../lib/anti_object'

class AntiObjectTest < Test::Unit::TestCase  
  def test_inversion
    a = [1,2,3]
    b = ~a
    
    assert b.kind_of?(AntiObject)
    assert_equal a, ~b
  end    
end
