class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance = amount + balance;
      print(
        'You have succesfully deposited ${amount} new account balance is ${balance}',
      );
    } else {
      print(
        'Failed!!!! Deposit amount must be greater than zero. Your account balance is ${balance}',
      );
    }
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance - amount;
      print(
        'You have succesfully withdrawn ${amount} new account balance is ${balance}',
      );
    } else {
      print(
        'Insufficient amount to complete withdrawal. Your account balance is ${balance}',
      );
    }
  }

  void checkBalance() {
    print('Hello👋, your account Balance is: ${balance}');
  }

  void displayInfo() {
    print('Account Holder: ${accountHolder}');
    print('Account Balance: ${balance}');
  }
}

void main() {
  BankAccount b1 = BankAccount('Vad', 0.0);
  b1.deposit(50000);
  b1.withdraw(60000);
  b1.checkBalance();

  b1.displayInfo();
}
