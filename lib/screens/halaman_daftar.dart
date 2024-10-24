import 'package:coba_uts/theme/warna.dart';
import 'package:coba_uts/widget/scaffold.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DaftarPage extends StatelessWidget {
  final formDaftarKey = GlobalKey();
  bool simpanPassword = true;
  DaftarPage({super.key,});

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
            flex: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
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
                  Text('Selamat Datang',
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
                    label: const Text('Username'),
                    hintText: 'Masukkan Username',
                    hintStyle: TextStyle(
                      color: birutua.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: birutua,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong masukkan password Anda';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Masukkan email',
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
                        color: birutua,
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
                    label: Text('Confirm Password'),
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

                 InkWell(
                  onTap: () {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      title: 'Berhasil',
                      text: 'Pendaftaran Berhasil dilakukan',
                      backgroundColor: birutua,
                      onConfirmBtnTap: () => Navigator.pop(context));
                  },
                  child: Material(
                    elevation: 4, 
                    borderRadius: BorderRadius.circular(25), 
                    color: Colors.transparent, 
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: birutua,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            color: putih,
                            fontWeight: FontWeight.bold
                          ),
                        ),
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
                        Navigator.pushNamed(context, '/masuk');
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: const Text(' Masuk',
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
  
}