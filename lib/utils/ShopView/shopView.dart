import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:invoiceease/utils/constants/colors.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/homePage/widgets/coveredShopCard.dart';
import 'package:line_icons/line_icon.dart';

import '../interfaces/billCreate/detailScreen.dart';

class shop_view extends StatefulWidget {
  final String shopName;

  const shop_view({Key? key, required this.shopName}) : super(key: key);

  @override
  State<shop_view> createState() => _shop_viewState();
}

class _shop_viewState extends State<shop_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      appBar: AppBar(
        title: Text(widget.shopName),
        backgroundColor: TColors.primary,
      ),
      // body: const Column(
      //   children: [
      //     Center(child: Text("NEED TO DESIGN")),
      //     shopcard_widget("ABC SHOP", "Colombo"),
      //   ],
      // ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "Last Bill",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const option_button(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "Invoice History",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView(
                    children: const [
                      CoveredShopCard("Pending", "001", 5000),
                      CoveredShopCard("PAID", "002", 5000),
                      CoveredShopCard("Cancelled", "003", 15000),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.to(detailScreen());
                    },
                    child: LineIcon.fileInvoiceWithUsDollar(
                      color: Colors.white,
                    ),
                    shape: CircleBorder(),
                    backgroundColor: TColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class option_button extends StatelessWidget {
  const option_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(style: BorderStyle.solid)),
                child: LineIcon.fileInvoice(),
              ),
              Text("View")
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(style: BorderStyle.solid)),
                child: LineIcon.pdfFile(),
              ),
              Text("PDF")
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(style: BorderStyle.solid)),
                child: const LineIcon.slideshare(),
              ),
              Text("Share")
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'dart:async';

// class shop_view extends StatefulWidget {
//   const shop_view({Key? key}) : super(key: key);

//   @override
//   State<shop_view> createState() => _shop_viewState();
// }

// class _shop_viewState extends State<shop_view> {
//   Position? _currentPosition;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//     _startLocationUpdates();
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Test if location services are enabled.
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }

//     Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then(
//       (Position position) {
//         setState(() {
//           _currentPosition = position;
//         });
//       },
//     ).catchError((e) {
//       print(e);
//     });
//   }

//   void _startLocationUpdates() {
//     _timer = Timer.periodic(Duration(seconds: 2), (timer) {
//       _getCurrentLocation();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Shop Name"),
//       ),
//       body: Center(
//         child: _currentPosition == null
//             ? CircularProgressIndicator()
//             : Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Latitude: ${_currentPosition?.latitude}"),
//                   Text("Longitude: ${_currentPosition?.longitude}"),
//                 ],
//               ),
//       ),
//     );
//   }
// }

