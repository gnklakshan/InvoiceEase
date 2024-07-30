import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class bottom_nav_bar extends StatefulWidget {
  final Function(int) onTabChange;
  const bottom_nav_bar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {
  int _SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GNav(
        rippleColor: Color.fromARGB(
            255, 68, 187, 198), // tab button ripple color when pressed
        hoverColor:
            Color.fromARGB(255, 118, 116, 116), // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 15,

        gap: 8, // the tab button gap between icon and text
        activeColor:
            Color.fromARGB(255, 8, 102, 5), // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: Color.fromARGB(255, 115, 139, 180)
            .withOpacity(0.1), // selected tab background color
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 5), // navigation bar padding
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.search,
            text: 'Search',
          ),
          // GButton(
          //   icon: LineIcons.readme,
          //   text: 'Report',
          // ),
          GButton(
            icon: LineIcons.userEdit,
            text: 'Settings',
          )
        ],
        selectedIndex: _SelectedIndex,
        onTabChange: (index) {
          setState(() {
            _SelectedIndex = index;
          });
          widget.onTabChange(index); // Call the callback function
        },
      ),
    );
  }
}
