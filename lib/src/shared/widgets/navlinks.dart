import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

    final Map<String, String> languages = {'EN': 'EN', 'FR': 'FR'};

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var link in links.entries)
          TextButton(
            onPressed: () {},
            child: Text(link.key, style: _linksTextStyle()),
          ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black, width: .8),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          child: Text("Sign up", style: _linksTextStyle()),
        ),
        DropdownButton(
          value: 'EN',
          items:
              languages.entries
                  .map(
                    (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
                  )
                  .toList(),
          onChanged: (value) {},
          dropdownColor: Colors.white,
          underline: Container(),
          elevation: 0,
          borderRadius: BorderRadius.circular(4),
          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 16),
          focusColor: Colors.transparent,
          style: _linksTextStyle().copyWith(color: Colors.black),
        ),
      ],
    );
  }

  TextStyle _linksTextStyle() =>
      GoogleFonts.roboto().copyWith(fontSize: 17, fontWeight: FontWeight.w700);
}
