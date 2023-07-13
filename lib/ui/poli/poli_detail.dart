import 'package:flutter/material.dart';
import 'package:klinik_app/ui/poli/poli_page.dart';
import 'package:klinik_app/ui/poli/poli_update.dart';
import '../../model/poli.dart';

class PoliDetailWidget extends StatefulWidget {
  final Poli poli;

  const PoliDetailWidget({super.key, required this.poli});

  @override
  State<PoliDetailWidget> createState() => _PoliDetailWidgetState();
}

class _PoliDetailWidgetState extends State<PoliDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Kamar"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Jenis Kamar : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Free Wifi, AC, No Smoking",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(),],
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
                  builder: (context) => PoliUpdate(poli: widget.poli)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: Text("Pilih"));
  }
}
