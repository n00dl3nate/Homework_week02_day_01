require('minitest/autorun')
require('minitest/rg')
require_relative('../books.rb')

class TestLibary < MiniTest::Test

  def setup
    @list_of_books = Libary.new([
    {
  title: "Lord of the rings",
  rental_details:
  {
   student_name: "Tony Hawk",
   date: "01/07/2018"}
 },
  {
  title: "This is going to hurt",
  rental_details:
  {
   student_name: "Jack",
   date: "04/04/2017"}
 },
  {
  title: "Harry Potter and the Philosopher’s Stone",
  rental_details:
  {
   student_name: "Tim Howard",
   date: "01/1/16"}
 },
  {
  title: "1984",
  rental_details:
  {
   student_name: "Jeff Stevenson",
   date: "01/11/18"}
 },
  {
  title: "Animal Farm",
  rental_details:
  {
   student_name: "Simon Skinner",
   date: "05/12/16"}
 },
  {
  title: "You Let me in",
  rental_details:
  {
   student_name: "Striling Archer",
   date: "30/1/18"}
  }])
  end

def test_return_book_by_title
  result = @list_of_books.return_book_by_title("1984")
  assert_equal({
  title: "1984",
  rental_details:
  {
   student_name: "Jeff Stevenson",
   date: "01/11/18"}
 }, result)
end


  def test_return_rental_details
    result = @list_of_books.return_rental_details("Animal Farm")
    assert_equal({
     student_name: "Simon Skinner",
     date: "05/12/16"}, result)
  end
#
  def test_add_new_book
    @list_of_books.add_new_book("Code for Dummies")
    result = @list_of_books.books.length
    assert_equal(7, result )
  end

  def test_add_rental_details
    @list_of_books.add_new_book("Code for Dummies")
    @list_of_books.add_rental_details("Code for Dummies","Nathan","03/05/2019")
    result = @list_of_books.books[6][:rental_details][:student_name]
    result2 =  @list_of_books.books[6][:rental_details][:date]
    assert_equal("Nathan", result)
    assert_equal("03/05/2019", result2)
  end



end
