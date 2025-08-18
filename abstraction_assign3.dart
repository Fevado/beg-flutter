abstract class Course {
  String title;

  Course(this.title);

  void startCourse();

  void endCourse() {
    print('Course ended: $title');
  }
}

class VideoCourse extends Course {
  VideoCourse(String title) : super(title);
  @override
  void startCourse() {
    print('Starting Video Course: $title');
  }
}

class LiveCourse extends Course {
  LiveCourse(String title) : super(title);
  @override
  void startCourse() {
    print('Starting Live Course: $title');
  }
}

void main() {
  VideoCourse v1 = VideoCourse('Video Editing');
  LiveCourse l1 = LiveCourse('Software Development');

  v1.startCourse();
  v1.endCourse();
  l1.startCourse();
  l1.endCourse();
}
