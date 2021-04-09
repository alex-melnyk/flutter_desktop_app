import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key key,
    @required this.icon,
    @required this.title,
    this.action,
    this.selected = false,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final Widget action;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: selected ? theme.colorScheme.onSurface.withOpacity(0.1) : null,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
              right: 6,
            ),
            child: icon,
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 13,
              ),
            ),
          ),
          if (action != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 6,
              ),
              child: action,
            ),
        ],
      ),
    );
  }
}
