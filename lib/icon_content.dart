import 'package:flutter/widgets.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.text, @required this.icon});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLableTextStyle,
        )
      ],
    );
  }
}
