import 'package:flutter/material.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        top: 16,
        bottom: 5,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: theme.hintColor,
        ),
      ),
    );
  }
}
