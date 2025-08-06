bool isClosed = false;
bool isOpen = false;
bool outOfStock = true;

String team = 'Liverpool';

main() {
  // If and Else
  if (isClosed) {
    print('Store is closed');
  } else if (isOpen) {
    print('Store is open');
  } else if (outOfStock) {
    print('Item is out of stock');
  } else {
    print('Nothing is matched');
  }

  // Example 2 if else
  if (team == 'Man United') {
    print('Greatest team on earth');
  } else if (team == 'Arsenal') {
    print('Netflix Next season FC🤣😂');
  } else {
    (print('What the H*** is this a team'));
  }

  // ternary operator
  isClosed ? print("Store is closed") : print('go home');
  5 > 9 ? print('Hooray math geek') : print('😥😥😥Revise harder');

  // for loops
}
