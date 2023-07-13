import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pasien/pasien_page.dart';
import '../../model/Pasien.dart';

class PasienDetailWidget extends StatefulWidget {
  final Pasien pasien;

  const PasienDetailWidget({super.key, required this.pasien});

  @override
  State<PasienDetailWidget> createState() => _PasienDetailWidgetState();
}

class _PasienDetailWidgetState extends State<PasienDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Detail"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "No kamar : ${widget.pasien.noRm}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Pilihan Kamar : ${widget.pasien.kmr}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Tanggal Check in : ${widget.pasien.tgl}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Jam Check Out : ${widget.pasien.jam}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )
        ],
      ),
    );
  }

}
