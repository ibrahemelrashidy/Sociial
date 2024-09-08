import 'package:flutter/material.dart';
import 'package:socialappwithfire/presentation/details_page/views/widgets/Custom_email_avatar2.dart';

class CustomPageDetails extends StatelessWidget {
  const CustomPageDetails(
      {super.key,
      required this.image2,
      required this.headLine,
      required this.date2,
      required this.description});
  final String image2;
  final String headLine;
  final String date2;
  final String description;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(fit: BoxFit.cover, image2)),
            const SizedBox(
              height: 12,
            ),
            Text(
              headLine,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              date2,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.green),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  description,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomEmailCardWithoutIcon(
                      image1: 'assets/images/images.png',
                      userName: "Elrashidy",
                      email: "elrashidy@gmail.com"),
                  Icon(Icons.comment),
                  Icon(Icons.group_add_rounded)
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(color: Colors.red, Icons.favorite),
                  Text('123')
                ],
              ),
              Column(
                children: [
                  Icon(color: Colors.green, Icons.remove_red_eye),
                  Text('456')
                ],
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
