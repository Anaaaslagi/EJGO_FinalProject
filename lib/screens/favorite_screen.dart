import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';
import 'package:tugas3/screens/post_screen.dart';
import 'package:tugas3/screens/home_screen.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Map<String, String>> favoritePlaces = [
    {
      "name": "Gunung Bromo",
      "address": "Jl. Raya Bromo, Probolinggo, Jawa Timur",
      "hours": "24 Jam",
      "image": "images/img1.jpeg",
      "rating": "4.5", 
      "description":
          "Gunung Bromo adalah salah satu gunung paling terkenal di Jawa Timur, menawarkan pemandangan yang menakjubkan dan pengalaman matahari terbit yang menakjubkan.", 
    },
    {
      "name": "Kawah Ijen",
      "address": "Kawah Ijen, Banyuwangi, Jawa Timur",
      "hours": "03:00 - 12:00",
      "image": "images/img2.jpeg",
      "rating": "4.7",
      "description":
          "Kawah Ijen terkenal dengan danau kawah berwarna biru kehijauan dan fenomena api biru, tempat yang wajib dikunjungi bagi para pelancong yang berjiwa petualang.", 
    },
    {
      "name": "Kampung Warna Warni Jodipan",
      "address": "Kampung Jodipan, Malang, Jawa Timur",
      "hours": "08:00 - 18:00",
      "image": "images/img3.jpeg",
      "rating": "4.2",
      "description":
          "Kampung Warna Warni Jodipan adalah desa penuh warna di Malang yang telah menjadi destinasi yang layak untuk diunggah di Instagram.", 
    },
    {
      "name": "Pantai Batu Bengkung",
      "address": "Pantai Batu Bengkung, Malang, Jawa Timur",
      "hours": "06:00 - 18:00",
      "image": "images/img4.jpeg",
      "rating": "4.3",
      "description":
          "Pantai Batu Bengkung adalah pantai yang tenang dengan formasi batuan yang unik dan lingkungan yang tenang.", 
    },
    {
      "name": "Telaga Sarangan",
      "address": "Telaga Sarangan, Magetan, Jawa Timur",
      "hours": "08:00 - 17:00",
      "image": "images/img5.jpeg",
      "rating": "4.8",
      "description":
          "Telaga Sarangan adalah danau pegunungan yang sejuk dan menyegarkan yang dikelilingi oleh pemandangan yang indah.", 
    },
    {
      "name": "Jembatan Suramadu",
      "address": "Jembatan Suramadu, Surabaya-Madura, Jawa Timur",
      "hours": "24 Jam",
      "image": "images/img6.jpeg",
      "rating": "4.6",
      "description":
          "Jembatan Suramadu adalah jembatan penting yang menghubungkan Surabaya dan Madura, menawarkan pemandangan yang menakjubkan di malam hari.", 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite")),
      body: ListView.builder(
        itemCount: favoritePlaces.length,
        itemBuilder: (context, index) {
          final place = favoritePlaces[index];
          return Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Image.asset(place["image"]!,
                  width: 80, height: 80, fit: BoxFit.cover),
              title: Text(place["name"]!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alamat: ${place["address"]!}"),
                  Text("Jam Buka: ${place["hours"]!}"),
                ],
              ),
              trailing: TextButton(
                child: Text("Lebih lanjut →"),
                onPressed: () {
                  // Mengarahkan ke PostScreen dengan data terkait
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostScreen(
                        index: index,
                        location: place["name"]!,
                        rating: double.parse(place["rating"]!),
                        description: place["description"]!,
                        address: place["address"]!,
                        openingHours: place["hours"]!,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: HomeButtomBar(),
    );
  }
}
