import 'package:flutter/material.dart';
import 'package:tugas3/widgets/post_app_bar.dart';
import 'package:tugas3/widgets/post_buttom_bar.dart';

class PostScreen extends StatelessWidget {
  final int index;
  final String location;
  final double rating; 
  final String description;
  final String address; 
  final String openingHours; 

  PostScreen({
    required this.index, 
    required this.location, 
    required this.rating, 
    required this.description,
    required this.address,
    required this.openingHours,
    });

  @override
  Widget build(BuildContext context) {

    final List<String> imagePaths = [
      'images/img1.jpeg',
      'images/img2.jpeg',
      'images/img3.jpeg',
      'images/img4.jpeg',
      'images/img5.jpeg',
      'images/img6.jpeg',
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: PostAppBar(),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePaths[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: PostButtomBar(
        location: location, // Kirim nama lokasi
        rating: rating,
        description: description,
        address: address,
        openingHours: openingHours,      
      ),
    );
  }
}