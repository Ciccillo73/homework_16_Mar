require('minitest/autorun')
require('minitest/reporters')

require_relative('../library_class')

class TestLibrary < MiniTest::Test


  def setup()
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details:
      {
        student_name: "Jeff",
        date: "01/12/16"
      }
    },
      {
        title: "the_lost_valley",
        rental_details:
        {
          student_name: "Matt",
          date: "13/02/09"
        }
      }
    ]

    @library = Library.new(@books)

  end

    def test_list_books()
      result = @library.books()
      assert_equal(@books, result)
    end

    def test_find_info_by_title()
      result = @library.find_info_by_title("lord_of_the_rings")
      assert_equal("lord_of_the_rings", result[:title])
    end

    def test_not_find_book()
      result = @library.find_info_by_title("the_liberal")
      assert_nil(result)
    end

    def test_can_add_book()
      @library.add_book("no_mercy")
      assert_equal({ title: "no_mercy", rental_details: { student_name: "", date: ""} }, @library.find_info_by_title("no_mercy"))

    end

    def test_change_rent_book_details()
      expecting = {title: "lord_of_the_rings",rental_details: { student_name: "Mattew", date: "11/11/11"}}
      @library.change_rent_book("lord_of_the_rings", "Mattew", "11/11/11")
      assert_equal(expecting, @library.find_info_by_title("lord_of_the_rings"))
    end





end
