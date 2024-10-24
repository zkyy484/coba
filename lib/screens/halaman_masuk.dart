import 'package:coba_uts/screens/item.dart';
import 'package:coba_uts/theme/warna.dart';
import 'package:coba_uts/widget/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class MasukPage  extends StatelessWidget {
  final formDaftarKey = GlobalKey();
  final Atribut atribut;
  bool simpanPassword = true;

 MasukPage ({super.key, required this.atribut});

  @override
  Widget build(BuildContext context) {
    return CustomScaff(
      isDimmed: true,
      child: Column(
        children: [
          const Expanded(
            child: SizedBox(
              height: 10,
            )),
          Expanded(
            flex: 4,
            child: Container(
              padding:const EdgeInsets.fromLTRB(25, 50, 25, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
              child: Form(
                key: formDaftarKey,
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Text('Selamat Datang Kembali',
                  style: TextStyle(
                    color: birutua,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  ),
                 SizedBox(height: 30,),
                 TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong masukkan email Anda';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Masukkan Email',
                    hintStyle: TextStyle(
                      color: birutua.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  birutua,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: birutua,
                      )
                    )
                  ),
                 ),
                 
                 SizedBox(height: 15,),
                 TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong masukkan password Anda';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: 'Masukkan Password',
                    hintStyle: TextStyle(
                      color: birutua.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  birutua,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: birutua,
                      )
                    )
                  ),
                 ),
                 
                 SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: simpanPassword, 
                          onChanged: (bool? value) {
                            setState(() {
                              simpanPassword = value!;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        Text('Saya ingat', 
                        style: TextStyle(
                          color: birutua,
                        ),
                      ),
                      ],
                    ),
                     GestureDetector(
                      child: Text('Lupa Passowrd?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: birutua,
                      ),
                      ),
                      onTap: () {},
                      ),
                  ]
                    ),

                 SizedBox(height: 15,),
            
                 SizedBox(
                child: ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: birutua,
                    elevation: 3
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Center(
                          child: Text(
                            'Selamat Datang!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                        children: [
                          Center(
                            child: Text(
                              '${atribut.name}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                              ),
                            ),
                          ),
                          SizedBox(height: 14,),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.popAndPushNamed(context, '/profil');
                              },
                              child: Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: birutua,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Lanjutkan',
                                    style: TextStyle(
                                      color: putih,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      )
                    );
                  },
                  child: SizedBox(
                    height: 35,
                    width: double.infinity,
                    child: Center(
                      child: Text('Masuk', style: TextStyle(
                        color: putih,
                        fontSize: 14,
                      ),),
                    ),
                  ),
                 ),
                ),
                 
                 SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.7,
                        color: Colors.grey.withOpacity(0.5),
                      )),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      child: Text('Masuk dengan',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      )),),
                    Expanded(
                      child: Divider(
                        thickness: 0.7,
                        color: Colors.grey.withOpacity(0.5),
                      )),
                  ],
                 ),
                 
                 SizedBox(height: 20,),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(FontAwesomeIcons.facebookF, color: Colors.blue,),
                    FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlue,),
                    FaIcon(FontAwesomeIcons.google, color: Colors.red,),
                    FaIcon(FontAwesomeIcons.apple, color: Colors.black,),
                  ],
                 ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tidak memiliki akun?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/daftar');
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: const Text('  Daftar',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 15,),
                  ],
                ),
                
                )
              ),
              ),
            ),
        ],
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}

class FontAwesomeIcons {
}