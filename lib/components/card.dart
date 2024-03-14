import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SizedBox(
        width: 400,
        height: 250,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NjZlNzgzMTMtN2Y0ZS00Yzg1LWFhZGYtZDYzYzQ0Nzc3OWI3/image__140.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}