import 'package:flutter/material.dart';
import 'package:tugas3/widgets/home_buttom_bar.dart';
import 'package:tugas3/widgets/location_app_bar.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<Map<String, dynamic>> locations = [
    {
      'title': 'Gunung Bromo',
      'image': "images/img1.jpeg",
      'description': 'Gunung Bromo adalah salah satu destinasi wisata yang paling populer di Indonesia.',
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
  ];

  void _addLocation(Map<String, dynamic> newLocation) {
    setState(() {
      locations.add(newLocation);
    });
  }

  void _updateLocation(int index, Map<String, dynamic> updatedLocation) {
    setState(() {
      locations[index] = updatedLocation;
    });
  }

  void _deleteLocation(int index) {
    setState(() {
      locations.removeAt(index);
    });
  }

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
              onTap: () => _showLocationDetail(context, location, index),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => _editLocation(context, index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _deleteLocation(index),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: HomeButtomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addLocationForm(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _showLocationDetail(BuildContext context, Map<String, dynamic> location, int index) {
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
                (tourIndex) {
                  final tour = location['tours'][tourIndex];
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

  void _addLocationForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddLocationForm(onSave: (newLocation) {
          _addLocation(newLocation);
          Navigator.pop(context);
        }),
      ),
    );
  }

  void _editLocation(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddLocationForm(
          onSave: (updatedLocation) {
            _updateLocation(index, updatedLocation);
            Navigator.pop(context);
          },
          initialLocation: locations[index],
        ),
      ),
    );
  }
}

class AddLocationForm extends StatefulWidget {
  final Function(Map<String, dynamic>) onSave;
  final Map<String, dynamic>? initialLocation;

  const AddLocationForm({required this.onSave, this.initialLocation});

  @override
  _AddLocationFormState createState() => _AddLocationFormState();
}

class _AddLocationFormState extends State<AddLocationForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageController = TextEditingController();

  List<Map<String, String>> tours = [];
  final _tourNameController = TextEditingController();
  final _tourDescriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialLocation != null) {
      final location = widget.initialLocation!;
      _titleController.text = location['title'];
      _descriptionController.text = location['description'];
      _imageController.text = location['image'];
      tours = List<Map<String, String>>.from(location['tours']);
    }
  }

  void _addTour() {
    if (_tourNameController.text.isNotEmpty && _tourDescriptionController.text.isNotEmpty) {
      setState(() {
        tours.add({
          'name': _tourNameController.text,
          'description': _tourDescriptionController.text,
        });
      });
      _tourNameController.clear();
      _tourDescriptionController.clear();
    }
  }

  void _editTour(int index) {
    _tourNameController.text = tours[index]['name']!;
    _tourDescriptionController.text = tours[index]['description']!;
    setState(() {
      tours.removeAt(index); // Remove the old tour to allow editing
    });
  }

  void _removeTour(int index) {
    setState(() {
      tours.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(widget.initialLocation == null ? 'Add Location' : 'Edit Location'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Pops the current screen, returning to the previous screen.
          },
        ),
      ),
      backgroundColor: Colors.grey[100], // Set background color for the entire scaffold
      body: Container(
        color: Colors.grey[100], // Match the body background with the scaffold color
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) => value!.isEmpty ? 'Please enter title' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Please enter description' : null,
              ),
              TextFormField(
                controller: _imageController,
                decoration: const InputDecoration(labelText: 'Image Path'),
                validator: (value) => value!.isEmpty ? 'Please enter image path' : null,
              ),
              const SizedBox(height: 16),

              // Tour Activity Fields
              const Text(
                'Aktivitas:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _tourNameController,
                decoration: const InputDecoration(labelText: 'Tour Name'),
              ),
              TextFormField(
                controller: _tourDescriptionController,
                decoration: const InputDecoration(labelText: 'Tour Description'),
              ),
              ElevatedButton(
                onPressed: _addTour,
                child: const Text('Add Activity'),
              ),

              // Display current tours
              ListView.builder(
                shrinkWrap: true,
                itemCount: tours.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tours[index]['name']!),
                    subtitle: Text(tours[index]['description']!),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => _editTour(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _removeTour(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onSave({
                      'title': _titleController.text,
                      'image': _imageController.text,
                      'description': _descriptionController.text,
                      'tours': tours,
                    });
                  }
                },
                child: Text(widget.initialLocation == null ? 'Add Location' : 'Update Location'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}