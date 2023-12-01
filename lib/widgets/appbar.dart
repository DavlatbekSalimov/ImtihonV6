import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 330,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                icon: const CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGh1WnQbwLnOgF91L9gBxA9kDb-CI2rC4t0QfYbbDwRghF5AZpIIyfSbWO8LpNW6vmFCw&usqp=CAU'),
                ),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.abc),
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(
                    gapPadding: 10, borderRadius: BorderRadius.circular(20))),
          ),
        ),
        const CircleAvatar(
          backgroundColor: Colors.white10,
          child: Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
        Expanded(
          child: const CircleAvatar(
            backgroundColor: Colors.white10,
            child: Icon(
              Icons.add_alert_outlined,
            ),
          ),
        )
      ],
    );
  }
}
