// import 'package:cloud_firestore/cloud_firestore.dart';

// class BrandCategoryModel {
//   final String brandid;
//   final String category;

//   BrandCategoryModel({
//     required this.brandid,
//     required this.category,
//   });

//   Map<String, dynamic> toJason() {
//     return {'brandid': brandid, 'category': category};
//   }

//   factory BrandCategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return BrandCategoryModel(
//       brandid: data['brandid'] as String,
//       category: ['category'] as String,
//     );
//   }
// }
