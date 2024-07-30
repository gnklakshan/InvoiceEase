import 'package:flutter/material.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/homePage/widgets/CirecularAvatarList.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/homePage/widgets/coveredShopCard.dart';
import 'package:invoiceease/utils/dashbord/widgets/Title_bar.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/homePage/widgets/target_sumery_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: target_summery_card(
                dailyTarget: 50000.0,
                coveredAmount: 25000.0,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Title_bar("Nearby Shops"),
            ),
            const CirecularAvatarList(
              Shoptype: "Shops",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Title_bar("Closed Shops"),
            ),
            const CirecularAvatarList(
              Shoptype: 'ClosedShops',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Title_bar("Covered Shops"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 170,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  children: const [
                    CoveredShopCard("ABC Shop", "001", 5000),
                    CoveredShopCard("AAA Shop", "002", 5000),
                    CoveredShopCard("AAAAAA Shop", "003", 15000),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
