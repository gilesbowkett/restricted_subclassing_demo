class ConditionalInheritance
  def self.inherited(subclass)
    raise YouCantInheritFromMe
    # blow up unless given a class method...hmm actually how will I do this?
  end
end
