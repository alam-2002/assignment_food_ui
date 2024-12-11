import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is Offer Page',
        textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}