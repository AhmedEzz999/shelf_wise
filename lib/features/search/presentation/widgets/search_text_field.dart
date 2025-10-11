import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: 22),
      decoration: InputDecoration(
        hint: const Text('Search', style: TextStyle(fontSize: 20)),
        suffixIcon: IconButton(
          padding: const EdgeInsets.only(right: 14),
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
