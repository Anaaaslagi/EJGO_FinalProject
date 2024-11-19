import 'package:flutter/material.dart';

class DetailLokasi extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
