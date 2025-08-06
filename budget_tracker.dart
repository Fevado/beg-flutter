// A simple budget app that lets users
// add expenses
// calculate total spending
// filter expensesabove threshold
// find higest expense
var expenses = {
  'Groceries': 13000,
  'Electricity': 10000,
  'Internet': 6000,
  'Entertainment': 11000,
};

void addExpense(String item, int amount) {
  expenses[item] = amount;
  // print(expenses);
}

void main() {
  addExpense('Spotify', 2000);
  int total = 0;
  for (var entry in expenses.entries) {
    print('Item: ${entry.key} -- Amount: ${entry.value}');
    total += entry.value;
  }
  print('The total amount of expenses is ${total}');

  for (var entry in expenses.entries) {
    int threshold = 10000;
    if (entry.value > threshold) {
      print('${entry.key} surpassed the threshold');
    }
  }
  int maxAmount = 0;
  String mostExpensiveItem = '';
  for (var entry in expenses.entries) {
    if (entry.value > maxAmount) {
      maxAmount = entry.value;
      mostExpensiveItem = entry.key;
    }
  }
  print('Most expensive item is ${mostExpensiveItem} and costs ${maxAmount}');
}

// completed my second assignment coded from the head with guidance but no code from AI
// more practice and we will be fine 
