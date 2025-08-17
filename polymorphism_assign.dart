class PaymentMethod {
  void pay(double amount) {
    print('Processing payment...');
  }
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount using Credit Card: <cardNumber>');
  }
}

class Paypal extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount using PayPal account: <email>');
  }
}

void main() {
  PaymentMethod m1 = PaymentMethod();
  CreditCard c1 = CreditCard();
  Paypal p1 = Paypal();

  m1.pay(23000);
  c1.pay(40000);
  p1.pay(80000);
}
