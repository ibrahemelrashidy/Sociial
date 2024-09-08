import 'package:flutter/material.dart';
import 'package:socialappwithfire/presentation/details_page/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Center(
            child: Text(
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                'Details View')),
      ),
      body: const DetailsViewBody(),
    );
  }
}
