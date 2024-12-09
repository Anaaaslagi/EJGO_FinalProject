import 'package:flutter/material.dart';
import 'package:tugas3/screens/location_detail_screen.dart';
import 'package:tugas3/screens/post_screen.dart';
import 'package:tugas3/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget{
  final List<String> category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ]; 

  final List<String> locations = [
    'Gunung Bromo',
    'Kawah Ijen',
    'Kampung Warna Warni Jodipan',
    'Pantai Batu Bengkung',
    'Telaga Sarangan',
    'Jembatan Suramadu'
  ];

  final List<double> ratings = [4.5, 4.7, 4.2, 4.3, 4.8, 4.6];

  final List<String> descriptions = [
    'Gunung Bromo adalah salah satu gunung paling terkenal di Jawa Timur, menawarkan pemandangan yang menakjubkan dan pengalaman matahari terbit yang menakjubkan.',
    'Kawah Ijen terkenal dengan danau kawah berwarna biru kehijauan dan fenomena api biru, tempat yang wajib dikunjungi bagi para pelancong yang berjiwa petualang.',
    'Kampung Warna Warni Jodipan adalah desa penuh warna di Malang yang telah menjadi destinasi yang layak untuk diunggah di Instagram.',
    'Pantai Batu Bengkung adalah pantai yang tenang dengan formasi batuan yang unik dan lingkungan yang tenang.',
    'Telaga Sarangan adalah danau pegunungan yang sejuk dan menyegarkan yang dikelilingi oleh pemandangan yang indah.',
    'Jembatan Suramadu adalah jembatan penting yang menghubungkan Surabaya dan Madura, menawarkan pemandangan yang menakjubkan di malam hari.'
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
      preferredSize: const Size.fromHeight(90.0),
      child: HomeAppBar(),
    ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align ke kiri
              children: [
                const Padding(
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
                const SizedBox(height: 20), // Jarak antara teks dan elemen berikutnya
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
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(left: 15),
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
                                child: const Icon(
                                  Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  locations[index],
                                  style: const TextStyle(
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
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    for (int i = 0; i < 6; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Text(
                        category[i],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
              const SizedBox(height: 20),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: city.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final String cityName = city[index];
                    return Padding(
                      padding: const EdgeInsets.all(15),
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
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text(
                                  city[index],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(Icons.more_vert, size: 30),
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
      );
    }
  }