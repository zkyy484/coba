import 'package:coba_uts/screens/halaman_daftar.dart';
import 'package:coba_uts/screens/halaman_masuk.dart';
import 'package:coba_uts/screens/halaman_profil.dart';
import 'package:coba_uts/screens/item.dart';
import 'package:coba_uts/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moch. Dzaky Musyaddad',
      home: Welcome(),
      debugShowCheckedModeBanner: false,
       
      routes: {
        '/daftar' : (context) => DaftarPage(),
        '/masuk' : (context) => MasukPage(atribut: Atribut(name: 'Moch. Dzaky Musyaddad', email: ''),),
        '/profil' : (context) {
          Atribut atribut = Atribut(name: 'Moch. Dzaky Musyaddad', email: 'dzakymusyaddad@gmail.com');
          return ProfilPage(atribut: atribut);
        },

        },
    );
  }
}

