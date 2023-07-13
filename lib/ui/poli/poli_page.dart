import 'package:flutter/material.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';
import 'package:klinik_app/ui/poli/poli_form.dart';
import 'poli_item.dart';

class PoliPageWidget extends StatefulWidget {
  const PoliPageWidget({super.key});

  @override
  State<PoliPageWidget> createState() => _PoliPageWidgetState();
}

class _PoliPageWidgetState extends State<PoliPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Silakan Pilih Kamar"),
      ),
      body: ListView(
        children: [ 
          PoliItem(
            poli: Poli(namaPoli: "Kamar Deluxe Bed"),
          ),
          PoliItem(
            poli: Poli(namaPoli: "Kamar Twin Bed"),
          ),
          PoliItem(
            poli: Poli(namaPoli: "Kamar Single Bed"),
          ),
        ],
      ),
    );
  }
}
