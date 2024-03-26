import 'dart:io';

void main() {
  stdout.write("Masukan skor Lumba-lumba juri a : ");
  var lumbalumba_juri_a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukan skor Lumba-lumba juri b : ");
  var lumbalumba_juri_b = int.parse(stdin.readLineSync()!);

  stdout.write("Masukan skor Lumba-lumba juri c : ");
  var lumbalumba_juri_c = int.parse(stdin.readLineSync()!);

  // Data skor Lumba-lumba
  List<int> lumbaLumbaSkor = [
    lumbalumba_juri_a,
    lumbalumba_juri_b,
    lumbalumba_juri_c
  ];

  stdout.write("Masukan skor Koala juri a : ");
  var koala_juri_a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukan skor Koala juri b : ");
  var koala_juri_b = int.parse(stdin.readLineSync()!);

  stdout.write("Masukan skor Koala juri c : ");
  var koala_juri_c = int.parse(stdin.readLineSync()!);

  // Data skor Koala
  List<int> koalaSkor = [koala_juri_a, koala_juri_b, koala_juri_c];

  // Menghitung skor rata-rata untuk setiap tim
  double rataRataLumbaLumba = menghitung_ratarata(lumbaLumbaSkor);
  double rataRataKoala = menghitung_ratarata(koalaSkor);

  // Menampilkan hasil
  print(
      "Skor rata-rata Tim Lumba-lumba: ${rataRataLumbaLumba.toStringAsFixed(2)}");
  print("Skor rata-rata Tim Koala: ${rataRataKoala.toStringAsFixed(2)}");
  print(menentukan_pemenang(rataRataLumbaLumba, rataRataKoala));
}

//perhitungan rata-rata
double menghitung_ratarata(List<int> skors) {
  double total = 0;
  for (int skor in skors) {
    total += skor;
  }
  return total / skors.length;
}

//Aturan perhitungan pemenang
String menentukan_pemenang(double lumbaLumba, double koala) {
  if (lumbaLumba > koala && lumbaLumba >= 100) {
    return "Selamat! Tim Lumba-lumba menang!";
  } else if (koala > lumbaLumba && koala >= 100) {
    return "Selamat! Tim Koala menang!";
  } else if (lumbaLumba == koala && lumbaLumba >= 100) {
    return "Hasil Seri! Kedua tim memiliki memiliki skor yang sama";
  } else {
    return "Tidak ada pemenang! Tidak ada tim yang mencapai skor 100.";
  }
}
