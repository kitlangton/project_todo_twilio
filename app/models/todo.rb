
class Todo

  attr_accessor :id, :task, :completion_date

  def initialize
    @task = "cook lunch"
    @id = 2
    @completion_date = "next tuesday"
  end

  def self.all
    [ new, new, new ]
  end

end