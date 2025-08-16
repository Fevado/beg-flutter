class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
  }
}

class Ebook extends Book {
  double fileSize;
  String downloadLink;

  Ebook(String title, String author, this.fileSize, this.downloadLink)
    : super(title, author);

  void displayEbookInfo() {
    displayInfo();
    print('File size: $fileSize mb');
    print('Download Link: $downloadLink');
  }
}

class AudioBook extends Book {
  int duration;
  String narrator;
  AudioBook(String title, String author, this.duration, this.narrator)
    : super(title, author);

  void displayAudioBookInfo() {
    displayInfo();
    print('Duration: $duration minutes');
    print('Narrator: $narrator');
  }
}

void main() {
  Book b1 = Book('Money', 'Vad');
  b1.displayInfo();

  Ebook e1 = Ebook('Power', 'Auntyy', 17, 'https://google.com');
  e1.displayEbookInfo();

  AudioBook a1 = AudioBook('Atomic', 'James', 300, 'Manuel');
  a1.displayAudioBookInfo();
}
