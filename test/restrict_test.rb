require File.dirname(__FILE__) + '/test_helper'

class RestrictTest < ActiveSupport::TestCase
  test "final classes cannot be subclassed" do
    assert_raise YouCantInheritFromMe do
      GrandpaHilton = FinalClass
      class Paris < GrandpaHilton ; end
    end
  end

  test "classes can impose inheritance conditions" do
    GrandpaHilton = ConditionalInheritance
    assert_raise RequiredClassMethodAbsent do
      class Paris2 < GrandpaHilton ; end
    end
    assert_nothing_raised do
      class Paris3 < GrandpaHilton
        i_stopped_partying_and_went_back_to_college
      end
    end
  end
end
