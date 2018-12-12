class Puppy < ActiveRecord::Base
  
  attr_accessor :
  
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
    
end