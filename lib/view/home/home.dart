import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/notes_controller.dart';
import 'package:getx/route/route_names.dart';
// import 'package:getx/route/route_names.dart';
import 'package:getx/utils/colors.dart';
// import 'package:getx/view/note/note_screen.dart';
import 'package:getx/widgets/custom_single_notes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotesController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColor.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "My Nudes",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: controller.notes.length,
                            itemBuilder: (context, index) {
                              return controller.notes.isEmpty
                                  ? const Center(
                                      child: Text("No notes available"),
                                    )
                                  : const CustomSingleNotes(
                                      title: "Test",
                                      description: "this is test",
                                      date: "12.12.12");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.primaryColor,
        onPressed: () => Get.toNamed(RouteNames.noteScreen),
        child: const Icon(Icons.add),
      ),
    );
  }
}
