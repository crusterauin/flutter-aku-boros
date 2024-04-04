import 'package:flutter/material.dart';
import 'package:aku_boros/models/barang.dart';
import 'package:aku_boros/widgets/pengeluaran_list/pengeluaran_list.dart';

class Pengeluaran extends StatefulWidget {
  const Pengeluaran({super.key});

  @override
  State<Pengeluaran> createState() {
    return _Pengeluaran();
  }
}

class _Pengeluaran extends State<Pengeluaran> {
  @override
  Widget build(BuildContext context) {
    final List<Barang> _barangdiBeli = [
      Barang(
        judul: 'Nasi Padang',
        harga: '10000',
        waktu: DateTime.now(),
        kategori: Kategori.makanan,
      ),
      Barang(
        judul: 'Sapu Lidi',
        harga: '15000',
        waktu: DateTime.now(),
        kategori: Kategori.rumahTangga,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const Text("Charts"),
          Expanded(
            child: PengeluaranList(pengeluaran: _barangdiBeli),
          ),
        ],
      ),
    );
  }
}
