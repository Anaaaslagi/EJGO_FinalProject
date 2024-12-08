import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';
import 'package:tugas3/screens/home_screen.dart';
import 'package:tugas3/widgets/location_app_bar.dart';

class LocationScreen extends StatelessWidget {
  final List<Map<String, dynamic>> locations = [
    {
      'title': 'Gunung Bromo',
      'image': "images/img1.jpeg",
      'description':
          'Gunung Bromo adalah salah satu destinasi wisata yang paling populer di Indonesia.',
      'tours': [
        {'name': 'Savana', 'description': 'Padang rumput luas yang menakjubkan.'},
        {'name': 'Pasir Berbisik', 'description': 'Lautan pasir dengan keindahan alami.'},
        {'name': 'Kawah Bromo', 'description': 'Pemandangan kawah vulkanik aktif.'},
      ],
    },
    {
      'title': 'Kawah Ijen',
      'image': "images/img2.jpeg",
      'description': 'Kawah Ijen terkenal dengan fenomena Blue Fire dan danau belerangnya.',
      'tours': [
        {'name': 'Blue Fire', 'description': 'Fenomena alam yang langka dan memukau.'},
        {'name': 'Danau Belerang', 'description': 'Danau dengan warna hijau toska yang indah.'},
        {'name': 'Pendakian', 'description': 'Jalur pendakian yang menantang.'},
      ],
    },
    {
      'title': 'Kampung Warna-Warni',
      'image': "images/img3.jpeg",
      'description': 'Kampung unik dengan rumah-rumah yang dicat warna-warni menarik.',
      'tours': [
        {'name': 'Wisata Foto', 'description': 'Spot foto menarik di setiap sudut.'},
        {'name': 'Jembatan Kaca', 'description': 'Jembatan dengan pemandangan sungai.'},
        {'name': 'Kuliner Lokal', 'description': 'Cicipi makanan khas yang lezat.'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: LocationAppBar(),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            final location = locations[index];
            return GestureDetector(
              onTap: () => _showLocationDetail(context, location),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        location['image'],
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        location['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: HomeButtomBar(),
    );
  }


  void _showLocationDetail(BuildContext context, Map<String, dynamic> location) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                location['title'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                location['description'],
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const Divider(height: 32),
              const Text(
                'Aktivitas:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...List.generate(
                location['tours'].length,
                (index) {
                  final tour = location['tours'][index];
                  return ListTile(
                    title: Text(tour['name']),
                    subtitle: Text(tour['description']),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}