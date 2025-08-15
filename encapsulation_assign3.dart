class Book {
  // private fields
  String _title;
  String _author;
  double _price;
  int _availableCopies;

  // making constructor that accepts all fields
  Book(this._title, this._author, this._price, this._availableCopies);

  // making a getter for all fields
  String get title => _title;
  String get author => _author;
  double get price => _price;
  int get availableCopies => _availableCopies;

  // making a setter for the price
  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print('The price value must be a positive number');
    }
  }

  // making a setter for the copies
  set availableCopies(int value) {
    if (value > 0) {
      _availableCopies = value;
    } else {
      print('The value of books must be a positive number');
      _price = 0; //This is a default value incase of negatives
    }
  }

  void borrowBook() {
    if (_availableCopies > 0) {
      _availableCopies -= 1;
      print('remaining copies: $_availableCopies');
    } else {
      print('Book not available');
      _availableCopies = 0; // This is a default value incase of negatives
    }
  }

  void returnBook() {
    _availableCopies += 1;
    print('Thank you for returning book on time');
  }

  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Price: $_price');
    print('Copies: $_availableCopies');
  }
}

void main() {
  Book b1 = Book('Money', 'Vad', 23000.00, 77);
  b1.price = 27000;
  b1.availableCopies = 87;
  b1.borrowBook();
  b1.returnBook();
  b1.returnBook();
  b1.displayInfo();

  Book b2 = Book('Power', 'Auntyy', -3000.00, -36);
  b2.price = -27000;
  b2.availableCopies = -87;
  b2.borrowBook();
  b2.displayInfo();
}
