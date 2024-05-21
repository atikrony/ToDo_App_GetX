import 'package:flutter/material.dart';
import 'package:getx/utils/colors.dart';

class CustomSingleNotes extends StatelessWidget {
  final String title, description, date;
  const CustomSingleNotes(
      {super.key,
      required this.title,
      required this.description,
      required this.date});

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
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              date,
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
