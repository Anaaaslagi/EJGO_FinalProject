import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 28,
              ),
            ),
          ),
          SizedBox(width: 10), // Menambahkan jarak antara ikon dan teks
          Text(
            "Favorit Anda", 
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
