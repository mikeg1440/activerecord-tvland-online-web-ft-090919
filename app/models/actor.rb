class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

  def list_roles
    self.characters.collect {|c| "#{c.name} - #{c.show.name}"}
  end

end
