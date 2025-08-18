abstract class Instrument {
  String name;

  Instrument(this.name);

  void play() {}
}

class Guitar extends Instrument {
  Guitar(String name) : super(name);
  @override
  void play() {
    print('$name is strumming');
  }
}

class Piano extends Instrument {
  Piano(String name) : super(name);
  @override
  void play() {
    print('$name is playing notes');
  }
}

class Drum extends Instrument {
  Drum(String name) : super(name);
  @override
  void play() {
    print('$name is beating');
  }
}

void main() {
  Guitar g1 = Guitar('Vad');
  Piano p1 = Piano('Auntyy');
  Drum d1 = Drum('Manu');

  g1.play();
  p1.play();
  d1.play();
}
