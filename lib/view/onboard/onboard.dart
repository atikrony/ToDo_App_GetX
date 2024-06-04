import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.50,
              decoration: BoxDecoration(
                // border: Border.all(
                //   width: 2,
                //   color: Colors.black.withOpacity(0.1),
                // ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Lottie.asset("lib/assets/lottie/ham.json"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
