import 'package:flutter/material.dart';
import 'package:my_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String country;
  final double price;
  final String image;
  final String description;

  const DetailsScreen({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        title: title,
        country: country,
        price: price,
        image: image,
        description: description,
      ),
    );
  }
}
