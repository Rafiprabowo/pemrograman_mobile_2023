void main(){

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts); // output {first: partridge, second: turtledoves, fifth: 1}
  print(nobleGases); // output {2: helium, 10: neon, 18: 2}

  // langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['nama'] = "Muhamad Rafi Prabowo";
  mhs1['nim'] = "2141720239";

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = "Muhamad Rafi Prabowo";
  mhs2[2] = "2141720239";

  print(mhs1); // output {nama: Muhamad Rafi Prabowo, nim: 2141720239}
  print(mhs2); // output {1: Muhamad Rafi Prabowo, 2: 2141720239}
}