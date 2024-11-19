import 'package:flutter/material.dart';

class LocationDetailPage extends StatelessWidget {
  final String locationName;
  final List<Map<String, dynamic>> locationData;

  LocationDetailPage({
    required this.locationName,
    required this.locationData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationName),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: locationData.length,
        itemBuilder: (context, index) {
          final item = locationData[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  item['image'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Rating: ${item['rating']}",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Alamat: ${item['address']}",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Jam Buka: ${item['openingHours']}",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      SizedBox(height: 10),
                      Text(
                        item['description'],
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
