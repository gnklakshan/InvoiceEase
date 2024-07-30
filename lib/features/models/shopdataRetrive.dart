import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:invoiceease/features/models/shopdata_model.dart';

// class ShopDataService {
//   Future<List<shopdataModel>> getShopData() async {
//     QuerySnapshot<Map<String, dynamic>> querySnapshot =
//         await FirebaseFirestore.instance.collection('shops').get();

//     List<shopdataModel> shops = querySnapshot.docs.map((doc) {
//       return shopdataModel.fromSnapshot(doc);
//     }).toList();

//     return shops;
//   }
// }

class ShopDataService {
  Future<List<Map<String, dynamic>>> getShopData(String shopType) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection(shopType).get();

    List<Map<String, dynamic>> shops = querySnapshot.docs.map((doc) {
      return doc.data();
    }).toList();

    return shops;
  }
}
