import 'package:flutter/material.dart';
import 'package:klinik_app/model/Pasien.dart';
import 'package:klinik_app/ui/pasien/pasien_detail.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _noRmCtrl = TextEditingController();
  final _kmr = TextEditingController();
  final _tgl = TextEditingController();
  final _jam = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riwayat Pesanan")),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNoRm(),
                _fieldkamar(),
                _fieldtgl(),
                _fieldjam(),
                _tombolSimpan()
              ],
            ),
          ),
        ),
      ),
    );
  }


  _fieldNoRm() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Ruangan"),
      controller: _noRmCtrl,
    );
  }

   _fieldkamar() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Ruangan"),
      controller: _kmr,
    );
  }

  _fieldtgl() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Pesan"),
      controller: _tgl,
    );
  }

  _fieldjam() {
    return TextField(
      decoration: const InputDecoration(labelText: "Jam Check In dan Check Out"),
      controller: _jam,
    );
  }




  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = Pasien(
              noRm : _noRmCtrl.text,
              kmr : _kmr.text,
              tgl : _tgl.text,
              jam : _jam.text,);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetailWidget(pasien: pasien)));
        },
        child: const Text("Submit"));
  }
}
