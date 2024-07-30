import 'package:flutter/material.dart';
import 'package:invoiceease/utils/constants/colors.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/homePage/homepage.dart';
import 'package:invoiceease/utils/dashbord/widgets/bottom_nav_bar.dart';
import 'package:invoiceease/utils/dashbord/main_Interfaces/SearchView/search.dart';

import 'main_Interfaces/setting/setting.dart';

class dashbord extends StatefulWidget {
  const dashbord({super.key});

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  int _selectedIndex = 0;

  Widget _buildsubinterface(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return SearchScreen();
      default:
        return const settings(); // Default interface
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[50],
      //backgroundColor: Color.fromARGB(255, 232, 241, 245),
      // backgroundColor: TColors.secondary,
      bottomNavigationBar: bottom_nav_bar(
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
            print("index: $_selectedIndex");
          });
        },
      ),
      // body: _buildsubinterface(_selectedIndex)

      body: Container(
          height: double.infinity,
          decoration: BoxDecoration(gradient: TColors.backgroundGradient),

          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //           Color.fromARGB(252, 151, 190, 184),
          //           Color.fromARGB(255, 116, 240, 180),
          //           Color.fromARGB(255, 232, 241, 245),
          //         ],
          //       ),
          //     ),
          child: _buildsubinterface(_selectedIndex)),
    );
  }
}
