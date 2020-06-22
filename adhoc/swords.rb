Person  = Struct.new(:position, :killed) do

end


no_of_person  = 10
people = []
no_of_person.times.each do |index|
  people << Person.new(0, false)
end


