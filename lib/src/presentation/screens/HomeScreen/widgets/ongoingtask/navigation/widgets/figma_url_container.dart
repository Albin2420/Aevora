import 'package:flutter/material.dart';

class FigmaUrlContainerWidget extends StatelessWidget {
  final String url;
  const FigmaUrlContainerWidget({super.key,
  required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Text(
          url,
          style: TextStyle(
            fontSize: 13,
            letterSpacing: 1,
            color: Color(0XFF304FCA),
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
