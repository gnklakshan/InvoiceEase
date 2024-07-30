import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final OutlinedButtonThemeData outlinedButtonTheme =
        dark ? _darkOutlinedButtonTheme : _lightOutlinedButtonTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(195, 116, 240, 197),
          automaticallyImplyLeading: false,
          title: const Text("Settings"),
          centerTitle: true,
          // actions: [
          //   IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit))
          // ], //profile picture change screen
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(gradient: TColors.backgroundGradient),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(_defaultSpace),
              child: Column(
                children: [
                  const SizedBox(height: _defaultSpace * 0.7),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.people,
                    label: "Profile",
                    onPressed: () {}, // Add path to profile screen
                  ),

                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.shop,
                    label: "All Shops",
                    onPressed: () {}, // Add path to booking screen
                  ),

                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.coin,
                    label: "Income",
                    onPressed: () {}, // Add path to wishlist screen
                  ),

                  /// FAQs
                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.message_question,
                    label: "FAQs",
                    onPressed: () {}, // Add path to FAQs screen
                  ),

                  /// Policy
                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.document_text,
                    label: "Policy",
                    onPressed: () {}, // Add path to policy screen
                  ),

                  /// Settings
                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.setting_2,
                    label: "Settings",
                    onPressed: () {}, // Add path to settings screen
                  ),

                  /// Help and Support
                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.support,
                    label: "Help and Support",
                    onPressed: () {}, // Add path to help and support screen
                  ),

                  /// Rate Our App
                  const SizedBox(height: _defaultSpace * 0.8),
                  _buildProfileOption(
                    context: context,
                    icon: Iconsax.like_1,
                    label: "Rate our App",
                    onPressed: () {}, // Add path to rate our app screen
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: _buttonHeight,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
              color: Color.fromARGB(219, 83, 215, 27), width: 0.8),
          padding: const EdgeInsets.all(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            const SizedBox(width: _defaultSpace),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            // const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }

  static const double _defaultSpace = 16.0;
  static const double _buttonHeight = 50.0;

  static final OutlinedButtonThemeData _lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    ),
  );

  static final OutlinedButtonThemeData _darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
  );
}
