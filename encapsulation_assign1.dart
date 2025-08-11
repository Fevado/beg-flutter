// create a class bank
// balance should be private
// enable deposit,withdrawal and balance checking
// should have validations

// class BankAccount {
//   double _balance;

//   BankAccount(this._balance);
//   // the get is a function (arrow function)
//   double get balance => _balance;
  

//   set balance(double amount) {
//     if (amount > 0) {
//       _balance = amount + _balance;
//     } else {
//       print('Failed!!!! Deposit amount should be greater than zero');
//     }
//   }

//   set bal(double amount) {
//     if (amount <= _balance) {
//       _balance = _balance - amount;
//     } else {
//       print('Failed!!! Insufficient amount to complete transction');
//     }
//   }

//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance = amount + _balance;
//       print(
//         'You have succesfully deposited ${amount} new account balance is ${_balance}',
//       );
//     } else {
//       print('Failed!!!! Deposit amount should be greater than zero');
//     }
//   }

//   void withdraw(double amount) {
//     if (amount <= _balance) {
//       _balance = _balance - amount;
//       print(
//         'You have succesfully withdrawn ${amount} new balance is ${_balance}',
//       );
//     } else {
//       print('Failed!!! Insufficient amount to complete transction');
//     }
//   }

//   void checkBalance() {
//     print('Your account balance is ${_balance}');
//   }
// }

// void main() {
//   BankAccount b1 = BankAccount(40000);
//   b1.deposit(30000);
//   b1.withdraw(80000);
//   b1.checkBalance();
// }

// create a class BankAccount
// balance should be private
// enable deposit,withdrawal and balance checking
// should have validations
// only one getter is needed
// basically the deposit and withdrawal methods were supposed to be setters

class BankAccount {
  double _balance;

  BankAccount(this._balance);

  // Getter - read balance
  double get balance => _balance;

  // Setter - deposit money (adds to balance)
  set depositAmount(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('✅ Successfully deposited $amount. New balance: $_balance');
    } else {
      print('❌ Deposit amount must be greater than zero.');
    }
  }

  // Setter - withdraw money (subtracts from balance)
  set withdrawAmount(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('✅ Successfully withdrew $amount. New balance: $_balance');
    } else {
      print('❌ Withdrawal failed. Check amount or balance.');
    }
  }

  // Method - check balance
  void checkBalance() {
    print('💰 Current balance: $_balance');
  }
}

void main() {
  BankAccount account = BankAccount(40000);

  account.depositAmount = 30000;   // Deposit via setter
  account.withdrawAmount = 10000; // Withdraw via setter
  account.withdrawAmount = 80000; // Fail due to insufficient funds

  account.checkBalance(); // Check final balance
}

