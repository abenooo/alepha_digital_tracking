import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Updated import
import 'package:latlong2/latlong.dart'; // Import for LatLng in flutter_map

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  LatLng fromLocation = LatLng(37.7749, -122.4194); // Default location
  List<Map<String, dynamic>> recentPlaces = [
    {
      "name": "Office",
      "address": "2972 Westheimer Rd, Santa Ana, Illinois 85486",
      "distance": 2.7
    },
    {
      "name": "Coffee shop",
      "address": "1901 Thornridge Cir, Shiloh, Hawaii 81063",
      "distance": 1.1
    },
    {
      "name": "Shopping center",
      "address": "4140 Parker Rd, Allentown, New Mexico 31134",
      "distance": 4.9
    },
    {
      "name": "Shopping mall",
      "address": "4140 Parker Rd, Allentown, New Mexico 31134",
      "distance": 4.0
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
      initialCenter: LatLng(9.005401, 38.763611), // Center the map over London
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
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
                    SizedBox(height: 10),

                    // Title
                    Center(
                      child: Text(
                        "Select address two",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // "From" Text Field
                    GestureDetector(
                      onTap: () async {
                        // Show location picker or open map to set "From" location
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.my_location, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text("From"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // "To" Text Field
                    GestureDetector(
                      onTap: () async {
                        // Show location picker or open map to set "To" location
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.place, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text("To"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Recent Places List
                    Text(
                      "Recent places",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: recentPlaces.map((place) {
                        return ListTile(
                          leading: Icon(Icons.location_pin, color: Colors.grey[700]),
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
