import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Updated import
import 'package:latlong2/latlong.dart'; // Import for LatLng in flutter_map

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});
  @override
  LocationScreenState createState() => LocationScreenState();
}

class LocationScreenState extends State<LocationScreen> {
  LatLng fromLocation =
      const LatLng(37.7749, -122.4194); // Default location addis ababa
  List<Map<String, dynamic>> recentPlaces = [
    {
      "name": "Office",
      "address": "Commercial Bank of Ethiopia, 2Q92+4P8, Addis Ababa",
      "distance": 2.7
    },
    {
      "name": "Coffee",
      "address": "Tomoca Coffee, Wawel St, Addis Ababa",
      "distance": 1.8
    },
    {
      "name": "Shopping center",
      "address": "Dubai tera building, Addis Ababa",
      "distance": 4.9
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // OpenStreetMap Background using flutter_map
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(
                  9.005401, 38.763611), // Center the map over addis ababa
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                // subdomains: ['a', 'b', 'c'],
              ),
            ],
          ),

          // Bottom Sheet for "Select Address"
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    // Drag handle
                    Center(
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Title
                    const Center(
                      child: Text(
                        "Select address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // "From" Text Field
                    GestureDetector(
                      onTap: () async {
                        // Show location picker or open map to set "From" location
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.my_location, color: Colors.grey[700]),
                            const SizedBox(width: 10),
                            const Text("From"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // "To" Text Field
                    GestureDetector(
                      onTap: () async {
                        // Show location picker or open map to set "To" location
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.place, color: Colors.grey[700]),
                            const SizedBox(width: 10),
                            const Text("To"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Recent Places List
                    const Text(
                      "Recent places",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: recentPlaces.map((place) {
                        return ListTile(
                          leading:
                              Icon(Icons.location_pin, color: Colors.grey[700]),
                          title: Text(place["name"]),
                          subtitle: Text(place["address"]),
                          trailing: Text("${place["distance"]}km"),
                          onTap: () {
                            // Set the selected location as "From" or "To" based on context
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
