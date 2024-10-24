import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coba_uts/theme/warna.dart';

class Atribut {
  String? name;
  String? email;

  Atribut({required this.name, required this.email});
}

class ItemProfil extends StatelessWidget {
  final String? tittle;
  final String? subtittle;
  final IconData? iconData;

  const ItemProfil({super.key, this.tittle, this.iconData, this.subtittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: putih,
          width: 1,
        ), 
      ),
      child: ListTile(
        leading: SizedBox(
          width: 40,
          child:  Icon(iconData!, color: putih,)),
        title: Text(tittle!, style: TextStyle(color: putih, fontWeight: FontWeight.w600),),
        subtitle: Text(subtittle!, style: TextStyle(color: putih),),
        trailing: Icon(Icons.arrow_forward, color: putih),
      ),
    );
  }
}
