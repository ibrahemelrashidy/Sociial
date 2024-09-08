import 'package:flutter/material.dart';
import 'package:socialappwithfire/presentation/details_page/views/widgets/custom_pagee_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageDetails(
        image2: 'assets/images/mango.png',
        headLine: 'Facts About the Mango Tree:',
        date2: 'Wensday,November27,2024',
        description:
            'Mangoes are succulent, aromatic fruits of the evergreen tree Mangifera indica, belonging to the Anacardiaceae family. They are indigenous to eastern Asia, Myanmar (Burma)');
  }
}
