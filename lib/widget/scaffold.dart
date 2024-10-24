import 'package:flutter/material.dart';

class CustomScaff extends StatelessWidget {
  const CustomScaff({super.key, this.child, this.isDimmed = false});

  final Widget? child;
  final bool isDimmed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/ft.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          if (isDimmed)
            Container(
              color: Colors.black.withOpacity(0.5), // Ubah opacity sesuai kebutuhan
            ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
