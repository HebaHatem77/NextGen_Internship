import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon.dart';

class LinksRow extends StatelessWidget {
  const LinksRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomIcon(icon: FontAwesomeIcons.twitter),
        CustomIcon(icon: FontAwesomeIcons.facebookF),
        CustomIcon(icon: FontAwesomeIcons.instagram),
        CustomIcon(icon: FontAwesomeIcons.figma),
        CustomIcon(icon: FontAwesomeIcons.behance),
      ],
    );
  }
}
