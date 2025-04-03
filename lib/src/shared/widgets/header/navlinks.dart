import 'package:flutter/material.dart';

class Navlinks extends StatelessWidget {
  const Navlinks({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> links = {
      'Destinations': '/',
      'Hotels': '/about',
      'Flights': '/contact',
      'Bookings': '/pricing',
      'Login': '/blog',
    };

    return Row(
      children: [
        for (var link in links.entries)
          TextButton(onPressed: () {}, child: Text(link.key)),
      ],
    );
  }
}
