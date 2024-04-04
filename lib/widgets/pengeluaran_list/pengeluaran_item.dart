import 'package:aku_boros/models/barang.dart';
import 'package:flutter/material.dart';

class PengeluaranItem extends StatelessWidget {
  const PengeluaranItem(this.barang, {super.key});

  final Barang barang;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(barang.judul),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  barang.harga.toString(),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(
                      barang.waktu.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
