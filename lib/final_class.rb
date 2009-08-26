class FinalClass
  def self.inherited(subclass)
    raise YouCantInheritFromMe
  end
end