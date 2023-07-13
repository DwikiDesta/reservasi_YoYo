import 'package:flutter/material.dart';
import 'package:klinik_app/model/Pasien.dart';
import 'package:klinik_app/ui/pasien/pasien_detail.dart';

class PasienUpdate extends StatefulWidget {
  final Pasien pasien;
  const PasienUpdate({super.key, required this.pasien});

  @override
  State<PasienUpdate> createState() => _PasienUpdateState();
}

class _PasienUpdateState extends State<PasienUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _noRmCtrl = TextEditingController();
  final _kmr= TextEditingController();
  final _tgl = TextEditingController();
  final _jam = TextEditingController();
  final _status = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _noRmCtrl.text = widget.pasien.noRm;
      _kmr.text = widget.pasien.kmr;
      _tgl.text = widget.pasien.tgl;
      _jam.text = widget.pasien.jam;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Tambah Pasien")),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNoRm(),
                _fieldkmr(),
                _fieldTgl(),
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

  _fieldkmr() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Kamar"),
      controller: _kmr,
    );
  }

  _fieldTgl() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Check In"),
      controller: _tgl,
    );
  }

  _fieldjam() {
    return TextField(
      decoration: const InputDecoration(labelText: "Jam Check Out"),
      controller: _jam,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = Pasien(
              noRm: _noRmCtrl.text,
              kmr: _kmr.text,
              tgl: _tgl.text,
              jam: _jam.text,);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetailWidget(pasien: pasien)));
        },
        child: const Text("Submit"));
  }
}
