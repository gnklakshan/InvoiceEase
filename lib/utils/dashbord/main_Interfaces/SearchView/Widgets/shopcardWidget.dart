import 'package:flutter/material.dart';

class shopcard_widget extends StatelessWidget {
  const shopcard_widget(this.shopname, this.city, {super.key});
  final String shopname;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        elevation: 12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color.fromARGB(255, 200, 79, 79),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/login.png',
                height: 120,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            ListTile(
              title: Text(
                shopname,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                city,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "View",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Expanded(
                    //   child: TextButton(
                    //     style:
                    //         TextButton.styleFrom(backgroundColor: Colors.red),
                    //     onPressed: () {},
                    //     child: const Text(
                    //       "Delete",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w300,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
