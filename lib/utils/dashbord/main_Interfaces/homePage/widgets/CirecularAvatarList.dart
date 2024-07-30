import 'package:flutter/material.dart';
import 'package:invoiceease/features/models/shopdataRetrive.dart';
import 'package:invoiceease/utils/dashbord/widgets/circleicon.dart';

class CirecularAvatarList extends StatelessWidget {
  // const CirecularAvatarList({super.key});

  final String Shoptype; // Add a field for the string parameter

  const CirecularAvatarList({
    Key? key,
    required this.Shoptype, // Make the title required in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: ShopDataService().getShopData(Shoptype),
        builder: (BuildContext context,
            AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available '));
          } else {
            List<Map<String, dynamic>> shops = snapshot.data!;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shops.length,
              itemBuilder: (context, index) {
                return circleIcon(shoplist: shops[index]);
              },
            );
          }
        },
      ),
    );
  }
}
