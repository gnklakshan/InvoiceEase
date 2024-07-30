// import 'package:flutter/material.dart';
// import 'package:invoiceease/features/models/shopdataRetrive.dart';
// import 'package:invoiceease/utils/dashbord/widgets/circleicon.dart';

// class text extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: ShopDataService().getShopData(),
//       builder: (BuildContext context,
//           AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error: ${snapshot.error}'),
//           );
//         } else {
//           List<Map<String, dynamic>> shops = snapshot.data!;
//           print('Shop data1: $shops'); // Print shop data for debugging
//           print(shops[0]);
//           return ListView.builder(
//             itemCount: shops.length,
//             itemBuilder: (context, index) {
//               Map<String, dynamic> shopData = shops[index];
//               return circleIcon(shoplist: shopData);
//             },
//           );
//         }
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   List<String> data = [
//     'Apple',
//     'Banana',
//     'Cherry',
//     'Date',
//     'Elderberry',
//     'Fig',
//     'Grapes',
//     'Honeydew',
//     'Kiwi',
//     'Lemon',
//   ];

//   List<String> searchResults = [];

//   void onQueryChanged(String query) {
//     setState(() {
//       searchResults = data
//           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Search Bar Tutorial'),
//       ),
//       body: Column(
//         children: [
//           SearchBar(onQueryChanged: onQueryChanged),
//           Expanded(
//             child: ListView.builder(
//               itemCount: searchResults.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(searchResults[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SearchBar extends StatefulWidget {
//   final Function(String) onQueryChanged;

//   const SearchBar({Key? key, required this.onQueryChanged}) : super(key: key);

//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar> {
//   String query = '';

//   void onQueryChanged(String newQuery) {
//     setState(() {
//       query = newQuery;
//     });
//     widget.onQueryChanged(newQuery);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: TextField(
//         onChanged: onQueryChanged,
//         decoration: InputDecoration(
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           labelText: 'Search',
//           hintText: "Nanotech Solutions",
//           hintStyle: TextStyle(color: Color.fromARGB(160, 70, 70, 70)),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//           prefixIcon: Icon(Icons.search),
//         ),
//       ),
//     );
//   }
// }

// Upgraded version=============================================
// import 'package:flutter/material.dart';

// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   List<String> data = [
//     'shop1',
//     'shop2',
//     'shop3',
//     'shop4',
//     'shop5',
//     'shop6',
//     'shop7',
//     'shop8',
//     'shop9',
//     'shop10',
//   ];

//   List<String> searchResults = [];
//   TextEditingController searchTextController = TextEditingController();

//   void onQueryChanged(String query) {
//     setState(() {
//       searchResults = data
//           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     });
//   }

//   void onSuggestionSelected(String suggestion) {
//     setState(() {
//       searchResults = [suggestion];
//       searchTextController.text = suggestion;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     searchTextController.addListener(() {
//       onQueryChanged(searchTextController.text);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Color.fromARGB(255, 197, 224, 197),
//       appBar: AppBar(
//         title: Text('Flutter Search Bar Tutorial'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(16),
//             child: TextField(
//               controller: searchTextController,
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 labelText: 'Search',
//                 hintText: "Nanotech Solutions",
//                 hintStyle: TextStyle(color: Color.fromARGB(160, 70, 70, 70)),
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//                 prefixIcon: Icon(Icons.search),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: searchResults.length,
//               itemBuilder: (context, index) {
//                 return Wrap(alignment: WrapAlignment.center,
//                   child: ListTile(
//                     leading: shopcard_widget(searchResults[index]),
//                     title: Text(searchResults[index]),
//                     onTap: () {
//                       onSuggestionSelected(searchResults[index]);
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class shopcard_widget extends StatelessWidget {
//   const shopcard_widget(this.shopname, {super.key});
//   final String shopname;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       child: Card(
//         elevation: 12,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         color: Color.fromARGB(255, 185, 224, 211),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(20),
//                 topLeft: Radius.circular(20),
//               ),
//               child: Image.asset(
//                 'assets/images/login.png',
//                 height: 120,
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 shopname,
//                 style: const TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               subtitle: Text(
//                 "city",
//                 style: TextStyle(
//                   color: Colors.grey,
//                 ),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextButton(
//                         style:
//                             TextButton.styleFrom(backgroundColor: Colors.white),
//                         onPressed: () {},
//                         child: const Text(
//                           "View",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w300,
//                           ),
//                         ),
//                       ),
//                     ),
//                     // SizedBox(
//                     //   width: 20,
//                     // ),
//                     // Expanded(
//                     //   child: TextButton(
//                     //     style:
//                     //         TextButton.styleFrom(backgroundColor: Colors.red),
//                     //     onPressed: () {},
//                     //     child: const Text(
//                     //       "Delete",
//                     //       style: TextStyle(
//                     //         color: Colors.white,
//                     //         fontSize: 20,
//                     //         fontWeight: FontWeight.w300,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoiceease/utils/ShopView/shopView.dart';
import 'package:invoiceease/utils/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    'Cargills',
    'Food City',
    'Keells Super',
    'Arpico',
    'ODEL',
    'Lotus Stores',
    'Singer ',
    'Shoppers Stop',
    'Hameedias',
    'Spa Ceylon',
    'Fashion Bug',
  ];

  List<String> searchResults = [];
  TextEditingController searchTextController = TextEditingController();

  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void onSuggestionSelected(String suggestion) {
    setState(() {
      searchResults = [suggestion];
      searchTextController.text = suggestion;
    });
  }

  @override
  void initState() {
    super.initState();
    searchTextController.addListener(() {
      onQueryChanged(searchTextController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: Text('Shops'),
      //     ),
      body: Container(
        height: double.infinity,
        // decoration: BoxDecoration(gradient: TColors.backgroundGradient),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: TextField(
                  controller: searchTextController,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Search',
                    hintText: "Nexus",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(160, 70, 70, 70)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns in the grid
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: searchResults.isEmpty
                      ? data.length
                      : searchResults.length,
                  itemBuilder: (context, index) {
                    String shopname = searchResults.isEmpty
                        ? data[index]
                        : searchResults[index];
                    return ShopCardWidget(shopname: shopname);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopCardWidget extends StatelessWidget {
  const ShopCardWidget({Key? key, required this.shopname}) : super(key: key);
  final String shopname;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(195, 116, 240, 197),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // color: TColors.darkContainer,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: Image.asset(
              'assets/images/shop.jpg',
              height: 62, // Adjust height to prevent overflow
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          ListTile(
            title: Text(
              shopname,
              style: const TextStyle(
                  color: Color.fromARGB(255, 15, 102, 215), fontSize: 20),
            ),
            subtitle: Text(
              "Colombo",
              style: TextStyle(
                color: Color.fromARGB(215, 193, 37, 37),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(238, 228, 235, 231),
                    ),
                    onPressed: () {
                      Get.to(shop_view(shopName: shopname));
                    },
                    child: const Text(
                      "View",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15, // Adjust font size
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
