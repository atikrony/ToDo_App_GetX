import 'package:flutter/material.dart';
import 'package:getx/utils/colors.dart';

class CustomSingleNotes extends StatelessWidget {
  const CustomSingleNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: Container(
          height: 15,
          width: 15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.backgroundColor,
          ),
        ),
        title: const Text(
          "Yo Ma Nigga",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sup bro! All good ?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "04:20 PM",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
