require './app'

# rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
def main
  app = App.new
  exit_button = true
  puts "\nWelcome to School Library App!"
  while exit_button
    options = [
      '', '     [1] Display all books', '     [2] Display all people', '     [3] Create a person',
      '     [4] Create a book', '     [5] Create a rental', '     [6] Display all rentals for a given person id',
      '     [7] Exit', ''
    ]
    puts '____________________________________________'
    puts "\nSelect an option by typing one of the numbers above:"
    puts options
    print 'Answer: '
    choice = gets.chomp
    case choice
    when '1'
      app.list_books
    when '2'
      app.list_people
    when '3'
      app.create_person
    when '4'
      app.create_book
    when '5'
      app.create_rental
    when '6'
      app.list_rentals
    else
      puts 'Thank you, See You Again!'
      exit_button = false
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength
main
