import 'package:flutter/material.dart';
import 'package:klinik_app/ui/login.dart';
import 'package:klinik_app/ui/widget/sidebar.dart';
import 'package:klinik_app/ui/poli/poli_page.dart';
import 'package:klinik_app/ui/pasien/pasien_page.dart';
import 'package:klinik_app/ui/pegawai/pegawai_page.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MENU UTAMA"),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.green[100],
        drawer: Sidebar(),
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PoliPageWidget()));
                    },
                    splashColor: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.hotel,
                            size: 70.0,
                          ),
                          Text(
                            "Pesan Kamar",
                            style: new TextStyle(fontSize: 17.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasienPageWidget()));
                    },
                    splashColor: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.menu_book,
                            size: 70.0,
                          ),
                          Text(
                            "Riwayat Pesanan",
                            style: new TextStyle(fontSize: 17.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PegawaiPage()));
                    },
                    splashColor: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.help,
                            size: 70.0,
                          ),
                          Text(
                            "Pusat Bantuan",
                            style: new TextStyle(fontSize: 17.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    splashColor: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.logout,
                            size: 70.0,
                          ),
                          Text(
                            "Logout",
                            style: new TextStyle(fontSize: 17.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
