class Dog < ActiveRecord::Base
  attr_accessor :id, :name, :breed
  
  def initialize(id: "nil", name: , breed: )
    @id = id 
    @name = name
    @breed = breed
  end
  
  def self.save
    self.save
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM dogs")[0][0]
  end
  
  def self.create(:name , :breed )
    
    
end
  #def self.create()
    
 
  #end
  
  #def save
    #if self.id
      #self.update
    #else
      #sql = <<-SQL
      #INSERT INTO students (name, grade)
      #VALUES (?, ?)
      #SQL
      #DB[:conn].execute(sql, self.name, self.grade)
      #@id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  #end
