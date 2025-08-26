// This is an order placing system made using dart code only by me
// I am trying to perfect my dart coding skill while stilllearning flutter
// This is coded from my head NO AI USED 
// will make tweaks in a few


class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);

  void displayFoodDetails() {
    print('Name: $name');
    print('Price: $price');
    print('Category: $category');
  }
}

var menus = [];

class Order {
  List _foodItem = [];

  void addItem(item) {
    if (menus.contains(item)) {
      _foodItem.add(item);
      print('${item.name} added to cart');
    } else {
      print('Enter correct item from menu');
    }
  }

  void removeItem(item) {
    if (_foodItem.contains(item)) {
      _foodItem.remove(item);
      print('${item.name} removed successfuly');
    } else {
      print('${item.name} not in cart');
    }
  }

  void calculateTotal() {
    double total = 0;
    for (var item in _foodItem) {
      total += item.price;
    }
    print('Total cost of items is: ${total}');
  }
}

class SpecialItem extends FoodItem {
  double discount;

  SpecialItem(String name, double price, String category, this.discount)
    : super(name, price, category);

  @override
  void displayFoodDetails() {
    super.displayFoodDetails();
    print('Discount: $discount');
  }
}

abstract class User {
  void placeOrder();
}

class Customer extends User {
  @override
  void placeOrder() {
    print('Customer has added items to cart');
  }
}

class Admin extends User {
  @override
  void placeOrder() {
    print('Admin is checking reports');
  }
}

Future<String> PlaceOrder() async {
  await Future.delayed(Duration(seconds: 3));

  return 'Order has been placed';
}

Future<void> main() async {
  FoodItem f = FoodItem('Chapo', 30, 'Kenyan');
  FoodItem f1 = FoodItem('Pilau', 300, 'Swahili');
  FoodItem f2 = FoodItem('Wings', 500, 'Foreign');
  FoodItem f3 = FoodItem('Sprite', 50, 'Drinks');
  menus.add(f);
  menus.add(f1);
  menus.add(f2);
  menus.add(f3);

  for (var menu in menus) {
    print('${menu.name} costs ${menu.price} category ${menu.category}');
  }

  print('These are the cheapest items:');
  for (var menu in menus) {
    if (menu.price < 400) {
      print(menu.name);
    }
  }

  Order o1 = Order();
  Order o2 = Order();
  Order o3 = Order();

  o1.addItem(f);
  o1.addItem(f1);
  o1.addItem(f3);
  o1.calculateTotal();

  o2.addItem(f1);
  o2.addItem(f2);
  o2.calculateTotal();

  o3.addItem(f1);
  o3.addItem(f3);
  o3.removeItem(f3);
  o3.calculateTotal();

  Customer c1 = Customer();
  Admin a1 = Admin();

  c1.placeOrder();
  a1.placeOrder();

  print('Processing Order');
  String result = await PlaceOrder();
  print(result);
}
