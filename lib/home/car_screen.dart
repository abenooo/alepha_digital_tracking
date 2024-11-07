// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:geolocator/geolocator.dart';
// // import 'package:shared_preferences/shared_preferences.dart';

// class CarScreen extends StatefulWidget {
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }

// class _LocationScreenState extends State<CarScreen> {
//   GoogleMapController? _mapController;
//   LatLng? fromLocation;
//   LatLng? toLocation;
//   List<Map<String, dynamic>> recentPlaces = [
//     {"name": "Office", "address": "2972 Westheimer Rd, Santa Ana, Illinois 85486", "distance": 2.7},
//     {"name": "Coffee shop", "address": "1901 Thornridge Cir, Shiloh, Hawaii 81063", "distance": 1.1},
//     {"name": "Shopping center", "address": "4140 Parker Rd, Allentown, New Mexico 31134", "distance": 4.9},
//     {"name": "Shopping mall", "address": "4140 Parker Rd, Allentown, New Mexico 31134", "distance": 4.0},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Google Map Background
//           GoogleMap(
//             onMapCreated: (controller) {
//               _mapController = controller;
//             },
//             initialCameraPosition: CameraPosition(
//               target: LatLng(37.7749, -122.4194), // Default location (San Francisco)
//               zoom: 12,
//             ),
//           ),

//           // Bottom Sheet for "Select Address"
//           DraggableScrollableSheet(
//             initialChildSize: 0.4,
//             minChildSize: 0.2,
//             maxChildSize: 0.6,
//             builder: (BuildContext context, ScrollController scrollController) {
//               return Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   ),
//                 ),
//                 child: ListView(
//                   controller: scrollController,
//                   children: [
//                     // Drag handle
//                     Center(
//                       child: Container(
//                         width: 50,
//                         height: 5,
//                         decoration: BoxDecoration(
//                           color: Colors.grey[300],
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),

//                     // Title
//                     const Center(
//                       child: Text(
//                         "Select address one",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // "From" Text Field
//                     GestureDetector(
//                       onTap: () async {
//                         // Show location picker or open map to set "From" location
//                       },
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[300]!),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.my_location, color: Colors.grey[700]),
//                            const SizedBox(width: 10),
//                            const Text("From"),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),

//                     // "To" Text Field
//                     GestureDetector(
//                       onTap: () async {
//                         // Show location picker or open map to set "To" location
//                       },
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[300]!),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.place, color: Colors.grey[700]),
//                             const SizedBox(width: 10),
//                             const Text("To"),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Recent Places List
//                    const Text(
//                       "Recent places",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 10),
//                     Column(
//                       children: recentPlaces.map((place) {
//                         return ListTile(
//                           leading: Icon(Icons.location_pin, color: Colors.grey[700]),
//                           title: Text(place["name"]),
//                           subtitle: Text(place["address"]),
//                           trailing: Text("${place["distance"]}km"),
//                           onTap: () {
//                             // Set the selected location as "From" or "To" based on context
//                           },
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}