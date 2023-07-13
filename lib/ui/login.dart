import 'package:flutter/material.dart';
import 'package:klinik_app/service/login_service.dart';
import 'package:klinik_app/ui/beranda.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Icon icon = Icon(Icons.visibility);
  bool obscure = true;

  final usernamectrl = TextEditingController();
  final passwordctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Selamat Datang Di Aplikasi YoYo",
                  style: TextStyle(color: Colors.red ,fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const Text (
                  "Silakan Login",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Form(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Username"),
                            controller: usernamectrl,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            obscureText: obscure,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (obscure == true) {
                                        obscure = false;
                                        icon = Icon(Icons.visibility_off);
                                      } else {
                                        obscure = true;
                                        icon = Icon(Icons.visibility);
                                      }
                                    });
                                  },
                                  icon: icon),
                            ),
                            controller: passwordctrl,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () async {
                                String username = usernamectrl.text;
                                String password = passwordctrl.text;
                                await LoginService()
                                    .login(username, password)
                                    .then((value) {
                                  if (value == true) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Beranda()));
                                  } else {
                                    AlertDialog alertDialog = AlertDialog(
                                      content: const Text(
                                          "Username atau Password Tidak Valid"),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("OK"),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.green),
                                        )
                                      ],
                                    );
                                    showDialog(
                                        context: context,
                                        builder: (context) => alertDialog);
                                  }
                                });
                              },
                              child: const Text("Login"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
