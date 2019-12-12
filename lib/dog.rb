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
  
  def self.create(name, breed)
    self.create(name, breed)
  end
  
  def self.find_or_create_by(input = {})
    if !self.find_by(input[0])
      dog = self.create(input)
    else 
      dog = self.find_by(input[0])
    end
    dog
  end
end


#def self.find_or_create_by(name: , breed: )
     #dog = DB[:conn].execute("SELECT * FROM dogs WHERE name = ? AND breed = ?", name, breed)
    #if !dog.empty?
      #dog_data = dog[0]
      #dog = Dog.new(id: dog_data[0], name: dog_data[1], breed: dog_data[2])
    #else
      #dog = self.create(name: name, breed: breed)
    #end
    #dog
  #end
    
#end
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
