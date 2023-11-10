# Pemrograman Mobile Pertemuan 4

## Praktikum 1
void main(){
// langkah 1
// var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);
//
// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);

// langkah 3
final List<String?> list = List<String?>.filled(5, null);
list[1] = "Muhamad Rafi Prabowo";
list[2] = "2141720239";

print(list);

}
## Praktikum 2
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

## Praktikum 3
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

## Praktikum 4
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

## Praktikum 5
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

## Tugas Praktikum

Jelaskan yang dimaksud Functions dalam bahasa Dart!
> Function adalah termasuk objek dan memiliki tipe ini berarti functions dapat dipakai untuk 
mengisikan nilai pada variabel atau sebagai argument pada function lainnya.

Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
> Parameter 
: bool isNoble(int atomicNumber) {
return _nobleGases[atomicNumber] != null;
}
> Named parameters
> without default value
: void enableFlags({bool? bold, bool? hidden}) {...}
> with default value
: void enableFlags({bool bold = false, bool hidden = false}) {...}
: enableFlags(bold: true, hidden: false);
> Optional postional Parameters
> String say(String from, String msg, [String? device]) {
var result = '$from says $msg';
if (device != null) {
result = '$result with a $device';
}
return result;
}
> assert(say('Bob', 'Howdy') == 'Bob says Howdy');

Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
> dapat menggunakan function sebagai argument pada function lainnya

Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
> function yang tidak memiliki nama
> const list = ['apples', 'bananas', 'oranges'];
list.map((item) {
return item.toUpperCase();
}).forEach((item) {
print('$item: ${item.length}');
});

Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
>Lexical Scope adalah scope dari variabel ditentukan sedangkan Closure 
adalah variabel di scope mana yang dapat di akses oleh function tertentu
> contoh
Function makeAdder(int addBy) {
return (int i) => addBy + i;
}
void main() {
// Create a function that adds 2.
var add2 = makeAdder(2);
// Create a function that adds 4.
var add4 = makeAdder(4);
assert(add2(3) == 5);
assert(add4(3) == 7);
}

Jelaskan dengan contoh cara membuat return multiple value di Functions!
// Returns multiple values in a record:
(String, int) userInfo(Map<String, dynamic> json) {
return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{
'name': 'Dash',
'age': 10,
'color': 'blue',
};

// Destructures using a record pattern:
var (name, age) = userInfo(json);

/* Equivalent to:
var info = userInfo(json);
var name = info.$1;
var age  = info.$2;
*/





