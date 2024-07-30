// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:invoiceease/features/models/shopdataRetrive.dart';
// import 'package:invoiceease/utils/dashbord/widgets/circleicon.dart';

// class NearbyShops extends StatefulWidget {
//   const NearbyShops({super.key});

//   @override
//   _NearbyShopsState createState() => _NearbyShopsState();
// }

// class _NearbyShopsState extends State<NearbyShops> {
//   Position? _currentPosition;
//   List<Map<String, dynamic>> _nearbyShops = [];

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//       setState(() {
//         _currentPosition = position;
//       });
//       _getNearbyShops();
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future<void> _getNearbyShops() async {
//     // Assuming ShopDataService().getShopData() returns a list of shops with 'latitude' and 'longitude' fields
//     List<Map<String, dynamic>> allShops = await ShopDataService().getShopData();
//     List<Map<String, dynamic>> nearbyShops = allShops.where((shop) {
//       double distance = Geolocator.distanceBetween(
//         _currentPosition!.latitude,
//         _currentPosition!.longitude,
//         shop['latitude'],
//         shop['longitude'],
//       );
//       return distance <= 5000; // 5 km radius
//     }).toList();

//     setState(() {
//       _nearbyShops = nearbyShops;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Nearby Shops'),
//       ),
//       body: _currentPosition == null
//           ? Center(child: CircularProgressIndicator())
//           : _nearbyShops.isEmpty
//               ? Center(child: Text('No shops found nearby'))
//               : ListView.builder(
//                   itemCount: _nearbyShops.length,
//                   itemBuilder: (context, index) {
//                     return circleIcon(shoplist: _nearbyShops[index]);
//                   },
//                 ),
//     );
//   }
// }
