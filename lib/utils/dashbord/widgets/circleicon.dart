import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:invoiceease/utils/ShopView/shopView.dart';
import 'package:invoiceease/utils/constants/colors.dart';

class circleIcon extends StatelessWidget {
  // List<Map<String, dynamic>> shops = snapshot.data!;
  final Map<String, dynamic> shoplist;
  const circleIcon({Key? key, required this.shoplist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => {
              print(" pressed button"),
              Get.to(shop_view(
                shopName: shoplist["Name"] ?? "Unknown Shop",
              ))
            },
            child: CircleAvatar(
              radius: 40,
              backgroundColor: TColors.primary,
              child: CircleAvatar(
                radius: 39,
                backgroundColor: Color.fromARGB(237, 236, 243, 244),
                backgroundImage: NetworkImage(
                  shoplist["Image"] ??
                      'https://cdn.pixabay.com/photo/2013/07/13/11/31/shop-158317_1280.png',
                ),
              ),
            ),
          ),
          Text(
            shoplist["Name"],
            style: const TextStyle(
              color: TColors.textSecondary,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
