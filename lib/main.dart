import 'package:flutter/material.dart';
import '/helpers/user_info.dart';
import '/ui/beranda.dart';
import '/ui/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  runApp(MaterialApp(
    title: "Aplikasi YoYo",
    debugShowCheckedModeBanner: false,
    home: token == null ? LoginPage() : Beranda(),
  ));
}
