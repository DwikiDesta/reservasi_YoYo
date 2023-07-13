import 'package:flutter/material.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/beranda.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';
import 'package:klinik_app/ui/poli/poli_page.dart';

class PoliUpdate extends StatefulWidget {
  final Poli poli;

  const PoliUpdate({super.key, required this.poli});

  @override
  State<PoliUpdate> createState() => _PoliUpdateState();
}

class _PoliUpdateState extends State<PoliUpdate> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pesanan")
        ),
      body: Column(
        children: [
          const SizedBox(height: 28),
          Text(
            "Detail Pembayaran",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tipe Kamar : Kamar Deluxe Bed",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Harga : Rp. 320.000",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Pembayaran hanya dilakukan ditempat",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(), _tombolHapus()],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Beranda()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: Text("Pilih"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PoliPageWidget()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Text("Cancel"));
  }
}
