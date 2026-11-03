/*
6) Simple Library 
Create a class called Book with properties: title, author, and isBorrowed (default: false). 
Implement borrowing logic: 
- borrowBook() → marks as borrowed, or displays an error if already borrowed. 
- returnBook() marks as returned, or displays an error if it wasn't borrowed. 
Create 2 Book objects and verify that borrowing and returning operations work properly under all conditions. 
*/
void main (){
  Book book1 = Book(title: "Clean Code", author: "Robert C. Martin");
  Book book2 = Book(title: "Design Patterns", author: "Erich Gamma");

  book1.borrowBook(); 
  book1.borrowBook(); // Error

  book1.returnBook(); 
  book1.returnBook(); // Error

  book2.borrowBook(); 
  book2.returnBook(); 
}

class Book {
  String title;
  String author;
  bool isBorrowed;

  Book({required this.title, required this.author, this.isBorrowed = false});

  void borrowBook() {
    if (!isBorrowed) {
      isBorrowed = true;
      print("You have borrowed '$title' by $author.");
    } else {
      print("Error: '$title' is already borrowed.");
    }
  }

  void returnBook() {
    if (isBorrowed) {
      isBorrowed = false;
      print("You have returned '$title' by $author.");
    } else {
      print("Error: '$title' was not borrowed.");
    }
  }
}