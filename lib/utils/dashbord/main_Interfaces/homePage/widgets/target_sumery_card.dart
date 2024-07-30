// import 'package:flutter/material.dart';

// class target_summery_card extends StatefulWidget {
//   const target_summery_card({super.key});

//   @override
//   State<target_summery_card> createState() => _target_summery_cardState();
// }

// class _target_summery_cardState extends State<target_summery_card> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 10,
//       shadowColor: Colors.black,
//       color: Colors.greenAccent[100],
//       child: Container(
//         width: double.infinity,
//         height: 180,
//         child: const Padding(
//           padding: EdgeInsets.all(12.0),
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: Column(
//                   children: [
//                     Column(
//                       children: [
//                         Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Text(
//                               "Daily Target :",
//                               style: TextStyle(fontSize: 18),
//                             )),
//                         Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Text(
//                               "Rs 50000.00",
//                               style: TextStyle(fontSize: 36),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Expanded(
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                               alignment: Alignment.bottomLeft,
//                               child: Text(
//                                 "Covered Amount :",
//                                 style: TextStyle(fontSize: 14),
//                               )),
//                           Text(
//                             "Rs 50000.00",
//                             style: TextStyle(fontSize: 24),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                               alignment: Alignment.bottomLeft,
//                               child: Text(
//                                 "To be covered :",
//                                 style: TextStyle(fontSize: 14),
//                               )),
//                           Text(
//                             "-",
//                             style: TextStyle(fontSize: 24),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class target_summery_card extends StatefulWidget {
//   final double dailyTarget;
//   final double coveredAmount;

//   const target_summery_card({
//     Key? key,
//     required this.dailyTarget,
//     required this.coveredAmount,
//   }) : super(key: key);

//   @override
//   State<target_summery_card> createState() => _target_summery_cardState();
// }

// class _target_summery_cardState extends State<target_summery_card>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     );

//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double toBeCovered = widget.dailyTarget - widget.coveredAmount;

//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return ScaleTransition(
//           scale: _animation,
//           child: Card(
//             elevation: 10,
//             shadowColor: Colors.black,
//             color: Colors.greenAccent[100],
//             child: Container(
//               width: double.infinity,
//               height: 180,
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Daily Target:",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   AnimatedOpacity(
//                     opacity: _animation.value,
//                     duration: const Duration(seconds: 1),
//                     child: Text(
//                       "Rs ${widget.dailyTarget.toStringAsFixed(2)}",
//                       style: TextStyle(fontSize: 36, color: Colors.green[700]),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Covered Amount:",
//                             style: TextStyle(fontSize: 14),
//                           ),
//                           AnimatedOpacity(
//                             opacity: _animation.value,
//                             duration: const Duration(seconds: 2),
//                             child: Text(
//                               "Rs ${widget.coveredAmount.toStringAsFixed(2)}",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 color: Colors.blue,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "To be Covered:",
//                             style: TextStyle(fontSize: 14),
//                           ),
//                           AnimatedOpacity(
//                             opacity: _animation.value,
//                             duration: const Duration(seconds: 2),
//                             child: Text(
//                               "Rs ${toBeCovered > 0 ? toBeCovered.toStringAsFixed(2) : '0.00'}",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 color:
//                                     toBeCovered > 0 ? Colors.red : Colors.green,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:invoiceease/utils/constants/colors.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class target_summery_card extends StatefulWidget {
  final double dailyTarget;
  final double coveredAmount;

  const target_summery_card({
    Key? key,
    required this.dailyTarget,
    required this.coveredAmount,
  }) : super(key: key);

  @override
  State<target_summery_card> createState() => _target_summery_cardState();
}

class _target_summery_cardState extends State<target_summery_card>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double toBeCovered = widget.dailyTarget - widget.coveredAmount;

    return WidgetAnimator(
      atRestEffect: WidgetRestingEffects.wave(),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Card(
          elevation: 10,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            width: double.infinity,
            height: 180,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: TColors.lineGradient),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Daily Target:",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: TColors.textPrimary),
                ),
                AnimatedOpacity(
                  opacity: _animation.value,
                  duration: const Duration(seconds: 2),
                  child: Center(
                    child: Text(
                      "Rs ${widget.dailyTarget.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 36, color: Colors.green[700]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Covered Amount:",
                          style: TextStyle(
                              fontSize: 14, color: TColors.textSecondary),
                        ),
                        AnimatedOpacity(
                          opacity: _animation.value,
                          duration: const Duration(seconds: 2),
                          child: Text(
                            "Rs ${widget.coveredAmount.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To be Covered:",
                          style: TextStyle(
                              fontSize: 14, color: TColors.textSecondary),
                        ),
                        AnimatedOpacity(
                          opacity: _animation.value,
                          duration: const Duration(seconds: 2),
                          child: Text(
                            "Rs ${toBeCovered > 0 ? toBeCovered.toStringAsFixed(2) : '0.00'}",
                            style: TextStyle(
                              fontSize: 24,
                              color:
                                  toBeCovered > 0 ? Colors.red : Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
