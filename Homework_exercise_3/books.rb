class Libary

  attr_accessor :books

  def initialize(libary)
    @books = libary
  end



  def return_book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end



  def return_rental_details(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end
 #
  def add_new_book(book)
      @books << {
      title: book ,
      rental_details:
      {
        student_name: "",
        date: ""
      }}

    end

    def add_rental_details(book_title,name,date)
      book = return_book_by_title(book_title)
      book[:rental_details] = { student_name: name, date: date }
    end


  end
