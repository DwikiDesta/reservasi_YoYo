import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
                nip: "1234123",
                nama: "Ibnu Ubaidillah",
                pekerjaan: "1999-11-01",
                noTelp: "085939458",),
          ),
          PegawaiItem(
            pegawai: Pegawai(
                nip: "1234123",
                nama: "Dwiki",
                pekerjaan: "2000-01-01",
                noTelp: "0859399999",),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (contex) => const PegawaiForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
