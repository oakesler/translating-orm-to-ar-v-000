class Dog < ActiveRecord::Base
  attr_accessor :id, :name, :breed
  
  def initialize(id: "nil", name: , breed: )
    @id = id 
    @name = name
    @breed = breed
  end
  
  def self.create()
    
 
  end
  
  
end
