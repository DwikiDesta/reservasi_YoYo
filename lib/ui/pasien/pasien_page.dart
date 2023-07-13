import 'package:flutter/material.dart';
import 'package:klinik_app/model/Pasien.dart';
import 'package:klinik_app/ui/pasien/pasien_form.dart';
import 'package:klinik_app/ui/pasien/pasien_item.dart';

class PasienPageWidget extends StatefulWidget {
  const PasienPageWidget({super.key});

  @override
  State<PasienPageWidget> createState() => _PasienPageWidgetState();
}

class _PasienPageWidgetState extends State<PasienPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Pesan"),
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
                  id: "00",
                  noRm: "200",
                  kmr : "Kamar Bed Deluxe",
                  tgl : "21/05/2025",
                  jam : "11.30",),
                  ),
          PasienItem(
              pasien: Pasien(
                  id: "01",
                  noRm: "201",
                  kmr : "Kamar Bed Single",
                  tgl : "21/06/2025",
                  jam : "10.30",),
                  ),
          PasienItem(
              pasien: Pasien(
                  id: "02",
                  noRm: "262",
                  kmr : "Kamar Bed Deluxe",
                  tgl : "25/07/2025",
                  jam : "11.15",),
                  ),
          PasienItem(
              pasien: Pasien(
                  id: "03",
                  noRm: "293",
                  kmr : "Kamar Bed Deluxe",
                  tgl : "31/01/2025",
                  jam : "11.45",),
                  ),
          PasienItem(
              pasien: Pasien(
                  id: "05",
                  noRm: "225",
                  kmr : "Kamar Bed Deluxe",
                  tgl : "15/04/2025",
                  jam : "11.30",)
                  ),
        ],
      ),
    );
  }
}
