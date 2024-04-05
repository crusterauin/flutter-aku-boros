import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Kategori { makanan, kuliah, rumahTangga, jajan }

const iconKategori = {
  Kategori.jajan: Icons.monetization_on,
  Kategori.kuliah: Icons.book,
  Kategori.makanan: Icons.food_bank,
  Kategori.rumahTangga: Icons.home,
};

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

  String get formattedDate {
    return formatter.format(waktu);
  }
}
