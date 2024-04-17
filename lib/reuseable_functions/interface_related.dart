import 'package:flutter/material.dart';

class GetText extends StatelessWidget {
  const GetText(this.text, this.hinttext, this.namecontroller);

  final String text;
  final String hinttext;
  final TextEditingController namecontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: namecontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_outlined),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          labelText: '$text',
          hintText: "$hinttext"),
    );
  }
}

class GetPassword extends StatefulWidget {
  final Function(String) onPasswordChanged;
  final String varname;

  const GetPassword(
      {Key? key, required this.onPasswordChanged, required this.varname})
      : super(key: key);

  @override
  State<GetPassword> createState() => _GetPasswordState();
}

class _GetPasswordState extends State<GetPassword> {
  bool passwordVisible = false;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
    _passwordController = TextEditingController();
    _passwordController.addListener(() {
      widget.onPasswordChanged(_passwordController.text);
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passwordController,
      obscureText: passwordVisible,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
        hintText: widget.varname,
        labelText: widget.varname,
        // helperText: "Password must contain at least 8 characters",
        helperStyle: TextStyle(color: Color.fromARGB(255, 2, 23, 37)),
        suffixIcon: IconButton(
          icon: Icon(passwordVisible ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              passwordVisible = !passwordVisible;
            });
          },
        ),
        alignLabelWithHint: false,
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
  }
}



// class GetPassword extends StatefulWidget {
//   const GetPassword({super.key});

//   @override
//   State<GetPassword> createState() => _GetPasswordState();
// }

// class _GetPasswordState extends State<GetPassword> {
//   bool passwordVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     passwordVisible = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: passwordVisible,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.lock_outline),
//         border: const OutlineInputBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(12),
//             bottomRight: Radius.circular(12),
//           ),
//         ),
//         hintText: "Password",
//         labelText: "Password",
//         helperText: "Password must contain at least 8 characters",
//         helperStyle: TextStyle(color: Color.fromARGB(255, 2, 23, 37)),
//         suffixIcon: IconButton(
//           icon: Icon(passwordVisible ? Icons.visibility_off : Icons.visibility),
//           onPressed: () {
//             setState(
//               () {
//                 passwordVisible = !passwordVisible;
//               },
//             );
//           },
//         ),
//         alignLabelWithHint: false,
//         //filled: true,
//       ),
//       keyboardType: TextInputType.visiblePassword,
//       textInputAction: TextInputAction.done,
//     );
//   }
// }




      // body: Text.rich(
      //   TextSpan(
      //     text: 'Hello', // default text style
      //     children: <TextSpan>[
      //       TextSpan(
      //           text: ' beautiful ',
      //           style: TextStyle(fontStyle: FontStyle.italic)),
      //       TextSpan(
      //           text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
      //     ],
      //   ),
      // ),