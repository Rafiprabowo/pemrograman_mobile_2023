void main(){
  var list = <double?> [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
  // output
  //[1, 2, 3]
  //[0, 1, 2, 3]
  //4

  //langkah 3

  list = [1, 2, null];
  print(list);
  var list3 = [0, ...list];
  print(list3.length);
  //output
  // [1.0, 2.0, 3.0]
  // [0, 1.0, 2.0, 3.0]
  // 4
  // [1.0, 2.0, null]
  // 4

  //langkah 4
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  // output ketika true [Home, Furniture, Plants, Outlet]
  // output ketika false [Home, Furniture, Plants]

  //langkah 5
  var login = 'Managerr';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
  // output case Manager [Home, Furniture, Plants, Inventory]
  // output [Home, Furniture, Plants]

  //langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);






}