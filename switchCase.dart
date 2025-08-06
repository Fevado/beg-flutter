//  switch and case
String coffee = 'espresso';
int marks = 45;
int age = 18;
main() {
  // Example 1
  switch (coffee) {
    case 'flavoured':
      print('flavored cofffee up in a bit');
      break;
    case 'dark-roasted':
      print('dark-roasted coffee up in a bit');
      break;
    case 'espresso':
      print('espresso coffee up in a bit');
      break;
    default:
      print('Order not available');
  }

  // example 2
  switch (marks) {
    case >= 80:
      print('awarded Grade A');
      break;
    case >= 70:
      print('Awarded Grade A minus');
      break;
    case >= 60:
      print('Awarded Grade B');
      break;
    case >= 50:
      print('Awarded grade C');
      break;
    case >= 40:
      print('Awarded grade D');
      break;
    case < 40:
      print('Failed The Exam');
      break;
    default:
      print('Test ungraded');
  }

  // Example 3
  switch (age) {
    case < 18:
      print('You are still a baby');
      break;
    case 18:
      print('An adult still cannot drink');
      break;
    case >=21:
      print('Old enough to drink');
      break;
    case > 28:
      print('Nigga you old');
      break;
    default:
      print('Enter correct age');
  }
}
