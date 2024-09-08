import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:socialappwithfire/presentation/home_page/views/widgets/custom_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('posts').get();
    data.addAll(querySnapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CustomCard(
            image: 'assets/images/mango.png',
            title: data[index]['title'],
            subTitle: data[index]['subTitle'],
            date: data[index]['date'],
            email: data[index]['email'],
            userName: data[index]['userName'],
            postId: data[index]['postId'],
          );
        });
  }
}
