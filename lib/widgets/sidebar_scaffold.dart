import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/widgets/widgets.dart';

class SidebarScaffold extends StatelessWidget {
  const SidebarScaffold({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 200,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 62,
                  ),
                  SearchBox(),
                  SidebarSection(title: 'Apple Music'),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.play_circle,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Listen Now',
                  ),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.music_note_2,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Browse',
                  ),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.dot_radiowaves_left_right,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Radio',
                  ),
                  SidebarSection(title: 'Library'),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.time,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Recently Added',
                  ),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.music_mic,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Artists',
                  ),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.music_albums,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Albums',
                  ),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.music_note,
                      size: 16,
                      color: Colors.pinkAccent,
                    ),
                    title: 'Songs',
                  ),
                  SidebarSection(title: 'Store'),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.star,
                      size: 16,
                      color: Colors.purpleAccent,
                    ),
                    title: 'iTunes Store',
                    selected: true,
                  ),
                  SidebarSection(title: 'Devices'),
                  SidebarButton(
                    icon: Icon(
                      CupertinoIcons.device_laptop,
                      size: 16,
                      color: Colors.grey,
                    ),
                    title: 'My iPhone',
                    action: Icon(
                      CupertinoIcons.eject,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                border: Border(
                  left: BorderSide(
                    width: 1.5,
                    color: theme.primaryColorDark,
                  ),
                ),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
