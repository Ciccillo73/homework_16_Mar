class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def find_info_by_title(title)
    book_found = nil
    for book in @books
      if book[:title] == title
        book_found = book
      end
    end
    return book_found
  end

  def add_book(new_title)
    book = {
      title: new_title,
      rental_details: {
        student_name: "",
        date: ""
        }
      }
    @books.push(book)
  end

  def change_rent_book(title, student, due_date)
    book = find_info_by_title(title)
    book[:rental_details] = {student_name: student, date: due_date }
  end


end
