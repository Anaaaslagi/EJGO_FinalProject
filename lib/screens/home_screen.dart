import 'package:flutter/material.dart';
import 'package:tugas3/screens/location_detail_screen.dart';
import 'package:tugas3/screens/post_screen.dart';
import 'package:tugas3/widgets/home_app_bar.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';

class HomePage extends StatelessWidget{
  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ]; 

  var locations = [
    'Gunung Bromo',
    'Kawah Ijen',
    'Kampung Warna Warni Jodipan',
    'Pantai Batu Bengkung',
    'Telaga Sarangan',
    'Jembatan Suramadu'
  ];

  final List<double> ratings = [4.5, 4.7, 4.2, 4.3, 4.8, 4.6];

  final List<String> descriptions = [
    'Gunung Bromo is one of the most famous mountains in East Java, offering stunning views and amazing sunrise experiences.',
    'Kawah Ijen is known for its turquoise crater lake and the blue fire phenomenon, a must-visit for adventurous travelers.',
    'Kampung Warna Warni Jodipan is a colorful village in Malang that has become an Instagram-worthy destination.',
    'Pantai Batu Bengkung is a serene beach with unique rock formations and tranquil surroundings.',
    'Telaga Sarangan is a cool and refreshing mountain lake surrounded by beautiful scenery.',
    'Jembatan Suramadu is a landmark bridge connecting Surabaya and Madura, offering breathtaking views at night.'
  ];

  final List<String> addresses = [
    'Jl. Raya Bromo, Probolinggo, Jawa Timur',
    'Kawah Ijen, Banyuwangi, Jawa Timur',
    'Kampung Jodipan, Malang, Jawa Timur',
    'Pantai Batu Bengkung, Malang, Jawa Timur',
    'Telaga Sarangan, Magetan, Jawa Timur',
    'Jembatan Suramadu, Surabaya-Madura, Jawa Timur'
  ];

  final List<String> openingHours = [
    '24 Jam',
    '03:00 - 12:00',
    '08:00 - 18:00',
    '06:00 - 18:00',
    '08:00 - 17:00',
    '24 Jam'
  ];

  var city = [
    'Surabaya',
    'Malang',
    'Banyuwangi',
    'Probolinggo',
    'Magetan',
    'Bondowoso'
  ];

  final List<String> imagePaths = [
    'images/img1.jpeg',
    'images/img2.jpeg',
    'images/img3.jpeg',
    'images/img4.jpeg',
    'images/img5.jpeg',
    'images/img6.jpeg'
  ];

  final Map<String, List<Map<String, dynamic>>> locationInfo = {
    'Surabaya': [
      {
        'name': 'Tugu Pahlawan',
        'image': 'images/tugupahlawan.jpeg',
        'description': 'Monumen bersejarah yang memperingati perjuangan pahlawan Surabaya.',
        'rating': 4.5,
        'address': 'Jl. Pahlawan, Surabaya, Jawa Timur',
        'openingHours': '08:00 - 18:00'
      },
      {
        'name': 'Jembatan Suramadu',
        'image': 'images/jembatansuramadu.jpg',
        'description': 'Jembatan ikonik yang menghubungkan Surabaya dan Madura.',
        'rating': 4.7,
        'address': 'Jembatan Suramadu, Surabaya',
        'openingHours': '24 Jam'
      },
    ],
    'Malang': [
      {
        'name': 'Kampung Warna Warni Jodipan',
        'image': 'images/kampungwarnawarni.jpeg',
        'description': 'Kampung penuh warna yang Instagrammable dan sangat hits.',
        'rating': 4.6,
        'address': 'Kampung Jodipan, Malang, Jawa Timur',
        'openingHours': '08:00 - 18:00'
      },
      {
        'name': 'Pantai Batu Bengkung',
        'image': 'images/pantaibengkung.jpeg',
        'description': 'Pantai dengan batuan unik dan pemandangan indah.',
        'rating': 4.3,
        'address': 'Pantai Batu Bengkung, Malang, Jawa Timur',
        'openingHours': '06:00 - 18:00'
      },
    ],
    
    'Banyuwangi': [
      {
        'name': 'Kawah Ijen',
        'image': 'images/kawahijen.jpg',
        'description': 'Gunung dengan fenomena api biru yang terkenal di dunia.',
        'rating': 4.8,
        'address': 'Kawah Ijen, Banyuwangi, Jawa Timur',
        'openingHours': '03:00 - 12:00',
      },
      {
        'name': 'Pantai Pulau Merah',
        'image': 'images/pantaimerah.jpg',
        'description': 'Pantai yang indah dengan pasir putih dan ombak yang tenang.',
        'rating': 4.6,
        'address': 'Pulau Merah, Banyuwangi, Jawa Timur',
        'openingHours': '06:00 - 18:00',
      },
    ],
    'Probolinggo': [
      {
        'name': 'Gunung Bromo',
        'image': 'images/bromo.jpeg',
        'description': 'Gunung dengan pemandangan spektakuler dan sunrise yang indah.',
        'rating': 4.9,
        'address': 'Gunung Bromo, Probolinggo, Jawa Timur',
        'openingHours': '24 Jam',
      },
      {
        'name': 'Air Terjun Madakaripura',
        'image': 'images/airterjun.jpg',
        'description': 'Air terjun eksotis yang tersembunyi di pegunungan.',
        'rating': 4.7,
        'address': 'Madakaripura, Probolinggo, Jawa Timur',
        'openingHours': '06:00 - 16:00',
      },
    ],
    'Magetan': [
      {
        'name': 'Telaga Sarangan',
        'image': 'images/telagasarangan.jpg',
        'description': 'Danau alami yang indah di kaki Gunung Lawu.',
        'rating': 4.5,
        'address': 'Telaga Sarangan, Magetan, Jawa Timur',
        'openingHours': '08:00 - 17:00',
      },
      {
        'name': 'Air Terjun Tirtosari',
        'image': 'images/tirtosari.jpg',
        'description': 'Air terjun yang indah dan menyegarkan di pegunungan.',
        'rating': 4.3,
        'address': 'Tirtosari, Magetan, Jawa Timur',
        'openingHours': '06:00 - 16:00',
      },
    ],
    'Bondowoso': [
      {
        'name': 'Kawah Wurung',
        'image': 'images/kawahwurung.jpg',
        'description': 'Kawah dengan pemandangan hijau yang menakjubkan.',
        'rating': 4.6,
        'address': 'Kawah Wurung, Bondowoso, Jawa Timur',
        'openingHours': '06:00 - 18:00',
      },
      {
        'name': 'Air Terjun Blawan',
        'image': 'images/blawan.jpeg',
        'description': 'Air terjun unik dengan aliran air panas dari pegunungan.',
        'rating': 4.5,
        'address': 'Blawan, Bondowoso, Jawa Timur',
        'openingHours': '06:00 - 16:00',
      },
    ],
  };

  final List<String> cities = ['Surabaya', 'Malang'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: HomeAppBar(),
    ),
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align ke kiri
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hari Ini Mau Kemana?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara teks dan elemen berikutnya
                Row(
                  children: [
                Expanded(child: Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=>PostScreen(
                                index: index, 
                                location: locations[index], 
                                rating: ratings[index],
                                description: descriptions[index],
                                address: addresses[index],
                                openingHours: openingHours[index],
                              ), 
                            ));
                        },
                        child: Container(
                          width: 160,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("images/img${index+1}.jpeg"),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  locations[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    );
                  }),
                )),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    for (int i = 0; i < 6; i++)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Text(
                        category[i],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
              SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: city.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final String cityName = city[index];
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LocationDetailPage(
                                    locationName: cityName,
                                    locationData: locationInfo[cityName]!,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: 
                                      AssetImage("images/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text(
                                  city[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.more_vert, size: 30),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: HomeButtomBar(),
      );
    }
  }