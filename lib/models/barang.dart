import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Kategori { makanan, kuliah, rumahTangga, jajan }

class Barang {
  Barang({
    required this.judul,
    required this.harga,
    required this.waktu,
    required this.kategori, 
  }) : id = uuid.v4();

  final String id;
  final String judul;
  final String harga;
  final DateTime waktu;
  final Kategori kategori;
}
