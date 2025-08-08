// Create a fee tracker
// Define the data to be used hold name and fee paid
// Create  fuction for adding to the data
// Display fee info of each student
// Analyze fee data the total,average,underpaying and top paying
// Handle the edge cases

var fee = {
  'Vad': 20000,
  'Ken': 40000,
  'Ben': 15000,
  'Men': 10000,
  'Zen': 35000,
};

// Create the function
void addFee(String name, int amount) {
  if (fee.containsKey(name)) {
    fee[name] = fee[name]! + amount;
  } else {
    fee[name] = amount;
  }
}

void main() {
  addFee('Gen', 20000);
  addFee('Men', 5000);
  addFee('Men', 5000);
  addFee('Hen', 10000);
  int total = 0;
  for (var entry in fee.entries) {
    print('${entry.key} has paid ${entry.value}');
    total += entry.value;
  }

  print('The total fee collected is ${total}');
  int students = fee.length;
  double average = total / students;
  print('The average paid fee is ${average}');

  int maxFee = 40000;
  for (var entry in fee.entries) {
    if (entry.value >= maxFee) {
      print('${entry.key} has paid full fee');
    }
  }

  int threshold = 20000;
  for (var entry in fee.entries) {
    if (entry.value < threshold) {
      print('${entry.key} has not met threshold');
    }
  }
}
