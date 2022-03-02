# frozen_string_literal: true

require_relative './classes/dog'
require_relative './classes/spider'
require_relative './classes/animal'
require_relative './classes/owner'
require_relative './classes/vet'
require_relative './classes/visit'

puts '#################################################################################################################'
animal = Animal.new('monkey', 2, 'Steven')
pp animal
pp animal.speak
pp animal.likes_food?('meat')
pp animal.likes_food?('bug')

puts '#################################################################################################################'
dog = Dog.new('black', 'Firulais')
pp dog
pp dog.speak
pp dog.bring_a_stick
pp dog.likes_food?('meat')
pp dog.likes_food?('bug')

puts '#################################################################################################################'
spider = Spider.new(10, 'Charlotte')
pp spider
pp spider.speak
pp spider.make_a_web
pp spider.likes_food?('meat')
pp spider.likes_food?('bug')

puts '#################################################################################################################'
alex = Owner.new("Alex")
pp alex.animals
alex.add_animal(dog)
alex.add_animal(spider)
alex.add_animal(animal)
pp alex.animals.map {|animal| animal.name}
pp alex.animals.count
pp alex.animals.first.name
pp alex.animals.first.number_of_legs

puts '#################################################################################################################'
pp animal.owner
animal.owner = alex
pp animal.owner
animal.owner.name
pp alex.animals.last.owner.name

puts '#################################################################################################################'
second_animal = Animal.new("cat", 4, "Kitty")
pp second_animal.owner
pp alex.animals.count
second_animal.owner = alex
pp second_animal.owner
pp alex.animals.count
pp alex.animals.last
pp alex.animals.last.name

puts '#################################################################################################################'
vet_maria = Vet.new("Maria", "New York")
vet_john = Vet.new("John", "San Francisco")
visit_1 = Visit.new("2017-12-22", dog, vet_maria)
visit_2 = Visit.new("2017-12-31", dog, vet_maria)

pp dog.visits.count
pp dog.visits.map { |visit| visit.date }
pp vet_john.visits.count
pp vet_maria.visits.count
pp vet_maria.visits.map { |visit| visit.animal.name }

puts '#################################################################################################################'
visit_3 = Visit.new("2017-11-11", spider, vet_john)
visit_4 = Visit.new("2017-10-10", spider, vet_maria)

pp spider.visits.count
pp spider.visits.map { |visit| visit.date }
pp vet_john.visits.count
pp vet_john.visits.map { |visit| visit.animal.name }
pp vet_maria.visits.count
pp vet_maria.visits.map { |visit| visit.animal.name }
