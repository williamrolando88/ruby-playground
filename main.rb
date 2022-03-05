class Test
  def initialize
    @elements = []
  end

  def add_element
    print 'Type something to store: '
    @elements << gets.chomp
  end
  

  def show_elements
    @elements.each { |x| puts "The element is: #{x}" }
  end

  def show_elements_by_index
    @elements.each_with_index do |element, index|
      puts "#{index}): The element is: #{element}"
    end
  end

  def get_by_index(index)
    @elements[index]
  end

end

trial = Test.new
trial.add_element
trial.add_element
trial.add_element

pp trial.show_elements
pp trial.get_by_index(0)
# pp trial.show_elements_by_index