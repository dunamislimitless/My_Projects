import 'package:flutter/material.dart';

class SamuelPractice extends StatelessWidget {
  const SamuelPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            onPressed: () {},
          )),
      backgroundColor: Colors.white,
    );
  }
}
