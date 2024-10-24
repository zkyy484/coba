import 'package:coba_uts/screens/halaman_daftar.dart';
import 'package:coba_uts/screens/halaman_masuk.dart';
import 'package:coba_uts/screens/item.dart';
import 'package:coba_uts/theme/warna.dart';
import 'package:coba_uts/widget/button.dart';
import 'package:coba_uts/widget/scaffold.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return  CustomScaff(
    isDimmed: false,
    child: Column(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Selamat Datang!\n',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      )
                    ),
                    TextSpan(
                      text: '\nProject ini merupakan tugas penempuhan saya untuk memenuhi nilai Ujian Akhir Semester ',
                      style: TextStyle(
                        fontSize: 14,
                        color: putih,
                      ),
                    ),
                  ],
                ),
              ),
            ),)),
        Flexible(
          flex: 1,
          child: Align( alignment: Alignment.bottomRight,
          child: Row(
            children: [
              Expanded(
                child: CustomBtn(
                buttonText: 'Daftar',
                color: Colors.transparent,
                textColor: putih,
                onTap: DaftarPage(),
              ),
              ),
              Expanded(
                child: CustomBtn(
                buttonText: 'Masuk',
                color: putih,
                textColor: birutua,
                onTap: MasukPage(atribut: Atribut(name: 'Moch. Dzaky Musyaddad', email: ''),),

              ))
            ],
          ),
        )),
      ],
    ),
   );
  }
}