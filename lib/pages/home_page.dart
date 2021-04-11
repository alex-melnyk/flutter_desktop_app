import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _colors = [
    Colors.blue,
    Colors.yellow,
    Colors.white10,
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SidebarScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Toolbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 260,
                    child: ListView.builder(
                      itemCount: _colors.length,
                      itemExtent: 680,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 2.5,
                          ),
                          color: _colors[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
