void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  // output (first, last, a: 2, b: true)

  (String, int) mahasiswa = ("Muhamad Rafi prabowo", 2141720239);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  mahasiswa2 = ("Muhamad Rafi Prabowo", a: 2, b:true, "2141720239");
  print(mahasiswa2.$1); // Prints 'Muhamad Rafi prabowo'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints '2141720239'

}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

