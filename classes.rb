# Define a Book class
class Book
    attr_accessor :title, :author, :isbn
  
    def initialize(title, author, isbn)
      @title = title
      @author = author
      @isbn = isbn
    end
  
    def to_s
      "#{title} by #{author} (ISBN: #{isbn})"
    end
  end
  
  # Define a Patron class
  class Patron
    attr_accessor :name, :library_card_number
  
    def initialize(name, library_card_number)
      @name = name
      @library_card_number = library_card_number
      @checked_out_books = []
    end
  
    def check_out(book)
      @checked_out_books << book
      puts "#{name} checked out '#{book.title}'."
    end
  
    def return_book(book)
      @checked_out_books.delete(book)
      puts "#{name} returned '#{book.title}'."
    end
  
    def list_checked_out_books
      puts "#{name}'s Checked Out Books:"
      @checked_out_books.each do |book|
        puts "- #{book}"
      end
    end
  end
  
  # Create a library hash to store books
  library = {}
  
  # Create instances of Book class and add them to the library
  book1 = Book.new("The Great Gatsby", "F. Scott Fitzgerald", "978-3-16-148410-0")
  book2 = Book.new("To Kill a Mockingbird", "Harper Lee", "978-0-06-112008-4")
  book3 = Book.new("1984", "George Orwell", "978-0-452-28423-4")
  
  library[book1.isbn] = book1
  library[book2.isbn] = book2
  library[book3.isbn] = book3
  
  # Create a patrons hash to store patron information
  patrons = {}
  
  # Create instances of Patron class and add them to the patrons hash
  patron1 = Patron.new("Alice", "12345")
  patron2 = Patron.new("Bob", "67890")
  
  patrons[patron1.library_card_number] = patron1
  patrons[patron2.library_card_number] = patron2
  
  # Main program loop
  loop do
    puts "\nWelcome to the Library Management System!"
    puts "1. Add a Book"
    puts "2. View Available Books"
    puts "3. Check Out a Book"
    puts "4. Return a Book"
    puts "5. View Checked Out Books"
    puts "6. Exit"
    print "Please select an option: "
  
    choice = gets.chomp
  
    case choice
    when '1'
      # Add a new book to the library
      print "Enter book title: "
      title = gets.chomp
      print "Enter author: "
      author = gets.chomp
      print "Enter ISBN: "
      isbn = gets.chomp
      new_book = Book.new(title, author, isbn)
      library[new_book.isbn] = new_book
      puts "'#{new_book.title}' has been added to the library."
    when '2'
      # View available books in the library
      puts "\nAvailable Books:"
      library.each_value do |book|
        puts "- #{book}"
      end
    when '3'
      # Check out a book
      puts "Enter your library card number: "
      card_number = gets.chomp
      patron = patrons[card_number]
      if patron.nil?
        puts "Invalid library card number."
      else
        puts "\nAvailable Books:"
        library.each_value do |book|
          puts "- #{book}"
        end
        print "Enter the ISBN of the book you want to check out: "
        isbn = gets.chomp
        book_to_check_out = library[isbn]
        if book_to_check_out.nil?
          puts "Invalid ISBN."
        else
          patron.check_out(book_to_check_out)
        end
      end
    when '4'
      # Return a book
      puts "Enter your library card number: "
      card_number = gets.chomp
      patron = patrons[card_number]
      if patron.nil?
        puts "Invalid library card number."
      else
        puts "#{patron.name}'s Checked Out Books:"
        patron.list_checked_out_books
        print "Enter the ISBN of the book you want to return: "
        isbn = gets.chomp
        book_to_return = library[isbn]
        if book_to_return.nil?
          puts "Invalid ISBN."
        else
          patron.return_book(book_to_return)
        end
      end
    when '5'
      # View checked out books by a patron
      puts "Enter your library card number: "
      card_number = gets.chomp
      patron = patrons[card_number]
      if patron.nil?
        puts "Invalid library card number."
      else
        patron.list_checked_out_books
      end
    when '6'
      # Exit the program
      puts "Thank you for using the Library Management System!"
      exit
    else
      puts "Invalid choice. Please try again."
    end
  end
  