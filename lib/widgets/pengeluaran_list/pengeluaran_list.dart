import 'package:aku_boros/widgets/pengeluaran_list/pengeluaran_item.dart';
import 'package:flutter/material.dart';
import 'package:aku_boros/models/barang.dart';

class PengeluaranList extends StatelessWidget {
  const PengeluaranList({
    super.key,
    required this.pengeluaran,
  });

  final List<Barang> pengeluaran;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pengeluaran.length,
      itemBuilder: (context, index) => PengeluaranItem(pengeluaran[index]),
    );
  }
}
