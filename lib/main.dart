import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx/route/route_names.dart';
import 'package:getx/route/route_pages.dart';
import 'package:getx/utils/colors.dart';
// import 'package:getx/view/onboard/onboard.dart';
import 'package:getx/view/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColor.backgroundColor),
      getPages: RoutePages.routes,
      // initialRoute: RouteNames.home,
      home: const SplashScreen(),
    );
  }
}
