require File.dirname(__FILE__) + '/test_helper'

class RestrictTest < ActiveSupport::TestCase
  test "final classes cannot be subclassed" do
    assert_raise YouCantInheritFromMe do
      class Foo < FinalClass ; end
    end
  end
end
