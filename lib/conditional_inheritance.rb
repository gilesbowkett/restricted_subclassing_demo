class ConditionalInheritance
  def self.inherited(subclass)
    raise RequiredClassMethodAbsent unless subclass.respond_to? :i_stopped_partying_and_went_back_to_college
  end
end
