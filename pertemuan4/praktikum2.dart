void main(){
  // langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // langkah 2
  print(halogens); //output {fluorine, chlorine, bromine, iodine, astatine}
  // langkah 3
  var names1 = <String>{};
  names1.add("Muhamad Rafi Prabowo");
  names1.add("2141720239");
  Set<String> names2 = {}; // This works, too.
  names2.addAll({"Muhamad Rafi Prabowo", "2141720239"});

  print(names1); // output {Muhamad Rafi Prabowo, 2141720239}
  print(names2); // output {Muhamad Rafi Prabowo, 2141720239}

}