import 'package:get/get.dart';
import 'package:getx/route/route_names.dart';
import 'package:getx/view/home/home.dart';
import 'package:getx/view/note/note_screen.dart';

class RoutePages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(
      name: RouteNames.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => const NoteScreen(),
    )
  ];
}
