import 'package:flutter/material.dart';
import 'package:klinik_app/model/Pasien.dart';
import 'package:klinik_app/ui/pasien/pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;

  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pasien.noRm),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetailWidget(pasien: pasien)));
      },
    );
  }
}
