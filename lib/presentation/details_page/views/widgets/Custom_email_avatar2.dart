import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomEmailCardWithoutIcon extends StatelessWidget {
  const CustomEmailCardWithoutIcon(
      {super.key,
      required this.image1,
      required this.userName,
      required this.email});
  final String image1;
  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(image1),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      userName),
                  Text(
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      email),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
