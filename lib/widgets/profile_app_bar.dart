import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Menempatkan ikon di sebelah kanan
        children: [
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.menu, // Ikon garis tiga (hamburger menu)
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
