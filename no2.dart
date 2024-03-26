import 'dart:io';

void main() {
  //Mark
  stdout.write("Masukkan Massa badan Mark: ");
  var massa_mark = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Tinggi badan Mark: ");
  var tinggi_mark = double.parse(stdin.readLineSync()!);

  //Perhitungan BMI Mark
  var BMI_mark = (massa_mark / (tinggi_mark * tinggi_mark));

  print("Mark memiliki BMI : ${BMI_mark.toStringAsFixed(2)}");

  //John
  stdout.write("Masukkan Massa badan John: ");
  var massa_john = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Tinggi badan John: ");
  var tinggi_john = double.parse(stdin.readLineSync()!);

  //Perhitungan BMI John
  var BMI_john = (massa_john / (tinggi_john * tinggi_john));

  print("Mark memiliki BMI : ${BMI_john.toStringAsFixed(2)}");

  // Menentukan apakah Mark memiliki BMI lebih tinggi dari John
  var markHigherBMI = BMI_mark > BMI_john;
  print(
      "Apakah Mark memiliki nilai BMI lebih tinggi dari pada John? $markHigherBMI");
}
