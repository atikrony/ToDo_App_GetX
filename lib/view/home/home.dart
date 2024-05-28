import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/notes_controller.dart';
import 'package:getx/route/route_names.dart';
import 'package:getx/utils/colors.dart';
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
                    "My Notes",
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          controller.notes.isEmpty
                              ? const Center(
                                  child: Text("No notes available"),
                                )
                              : Obx(
                                  () => ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    reverse: true,
                                    itemCount: controller.notes.length,
                                    itemBuilder: (context, index) {
                                      final note = controller.notes[index];

                                      return CustomSingleNotes(
                                        index: index,
                                      );
                                    },
                                  ),
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
