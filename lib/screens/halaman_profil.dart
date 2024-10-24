import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_ujian/screens/item.dart';
import 'package:project_ujian/theme/warna.dart';

class ProfilPage extends StatelessWidget {
  final Atribut atribut;

  const ProfilPage({super.key, required this.atribut});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: putih,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ft.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
        Padding(
        padding: EdgeInsets.fromLTRB(40, 92.5, 40, 30),
        child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: putih,
                  width: 4.0,
                )
              ),
            child: const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/pp.jpg'),
            ),
            ),

            SizedBox(height: 60,),
            ItemProfil(
              tittle: 'Name',
              subtittle: '${atribut.name}',
              iconData:  CupertinoIcons.person),
            
            SizedBox(height: 17,),
            ItemProfil(
              tittle: 'Email',
              subtittle: '${atribut.email}',
              iconData:  CupertinoIcons.mail),
            
            SizedBox(height: 17,),
            ItemProfil(
              tittle: 'Alamat',
              subtittle: 'Tembokrejo, Muncar, Banyuwangi',
              iconData:  CupertinoIcons.location),
            
            SizedBox(height: 17,),
            ItemProfil(
              tittle: 'Nomor Telepon',
              subtittle: '083122085284',
              iconData:  CupertinoIcons.phone),
            
            SizedBox(height: 25,),
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Konfirmasi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: birutua
                        ),),
                        content: Text('Yakin ingin keluar?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Batal'),
                          ),
                          TextButton(
                            onPressed: () {
                              if (Platform.isAndroid) {
                                SystemNavigator.pop();
                              } else if (Platform.isIOS) {
                                exit(0);
                              }
                            },
                            style: TextButton.styleFrom(backgroundColor: birutua),
                            child: Text('Ya',
                            style: TextStyle(
                              color: putih
                            ),),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: putih,
                  foregroundColor: bg,
                ),
                child: Text(
                  'Keluar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 120,
            //       height: 50,
            //       child: ElevatedButton(
            //         onPressed: () {
            //           if (Platform.isAndroid) {
            //             SystemNavigator.pop();
            //           } else if (Platform.isIOS) {
            //             exit(0);
            //           }
            //         },
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: putih,
            //           foregroundColor: bg,
            //         ),
            //         child: Text('Keluar',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //         ),)),
                    
            //      ),

                 SizedBox(height: 30,)
          ],
        )),
      ),
    ]
    )
    );
  }
}
