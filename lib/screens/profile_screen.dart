import 'package:flutter/material.dart';
import 'package:tugas3/widgets/profile_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // State untuk menyimpan data profil
  String fullName = 'Budiono Siregar';
  String email = 'budiono@example.com';
  String phoneNumber = '+62 999 8888 7777';
  String aboutMe =
      'Perkenalkan nama saya Budiono Siregar, Cita - Cita kapal Laut. '
      'Ini merupakan final project mata kuliah Teknologi Berkembang dari Kelompok 5';

  // Fungsi untuk membuka modal edit profil
  void _showEditProfileModal(BuildContext context) {
    // Kontrol untuk form input
    TextEditingController nameController =
        TextEditingController(text: fullName);
    TextEditingController emailController = TextEditingController(text: email);
    TextEditingController phoneController =
        TextEditingController(text: phoneNumber);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Edit Your Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Input Nama
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input Nomor Telepon
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Tombol Simpan
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Perbarui data profil
                      fullName = nameController.text;
                      email = emailController.text;
                      phoneNumber = phoneController.text;
                    });
                    Navigator.pop(context); // Tutup modal setelah menyimpan
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: ProfileAppBar(),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Foto Profil
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("images/blawan.jpeg"),
          ),
          const SizedBox(height: 15),
          // Nama Pengguna
          Text(
            fullName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Mahasiswa Semester 5',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          // Tentang Saya
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      aboutMe,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Informasi Kontak
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Information',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    contactInfo(Icons.email, email),
                    const SizedBox(height: 10),
                    contactInfo(Icons.phone, phoneNumber),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Tombol Edit Profile
          ElevatedButton(
            onPressed: () {
              _showEditProfileModal(context);
            },
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
    // bottomNavigationBar: HomeButtomBar(),
  );
}


  Widget contactInfo(IconData icon, String info) {
    return Row(
      children: [
        Icon(icon, color: Colors.blueAccent),
        const SizedBox(width: 10),
        Text(
          info,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
