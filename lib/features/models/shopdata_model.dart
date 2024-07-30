import 'package:cloud_firestore/cloud_firestore.dart';

// class shopdataModel {
//   final String shopname;
//   //final String category;

//   shopdataModel({
//     required this.shopname,
//     // required this.category,
//   });

//   Map<String, dynamic> toJason() {
//     return {
//       'shopname': shopname,
//     };
//   }

//   factory shopdataModel.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return shopdataModel(
//       shopname: data['shopname'] as String,
//       //category: ['category'] as String,
//     );
//   }
// }

class shopdataModel {
  final String shopname;

  shopdataModel({
    required this.shopname,
  });

  @override
  String toString() {
    return 'Shop: { shopname: $shopname }';
  }

  Map<String, dynamic> toJson() {
    return {
      'shopname': shopname,
    };
  }

  factory shopdataModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return shopdataModel(
      shopname: data['shopname'],
    );
  }
}
