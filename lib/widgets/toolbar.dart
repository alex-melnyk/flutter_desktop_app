import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  Toolbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final volume = 0.75;

    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: theme.dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// PLAYING CONTROLS
          Flexible(
            flex: 27,
            child: FractionallySizedBox(
              widthFactor: 0.9686,
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.backward_fill,
                        size: 22,
                        color: theme.disabledColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Icon(
                          CupertinoIcons.play_fill,
                          size: 22,
                          color: theme.disabledColor,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.forward_fill,
                        size: 22,
                        color: theme.disabledColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// CURRENT PLAYING INFO
          Flexible(
            flex: 40,
            child: FractionallySizedBox(
              widthFactor: 0.9782,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Container(
                    // width: 312,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: theme.bottomAppBarColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 42,
                          color: theme.hintColor.withOpacity(0.25),
                          alignment: Alignment.center,
                          child: Icon(
                            CupertinoIcons.double_music_note,
                            size: 26,
                            color: theme.disabledColor,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              CupertinoIcons.tv_music_note_fill,
                              size: 26,
                              color: theme.disabledColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// VOLUME CONTROL
          Flexible(
            flex: 23,
            child: FractionallySizedBox(
              // widthFactor: 0.8834,
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.volume_mute,
                        color: theme.disabledColor,
                        size: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        width: 62,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                color: theme.disabledColor.withOpacity(0.15),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(2),
                                  right: Radius.circular(2),
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: volume,
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: theme.disabledColor,
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(2),
                                    right: Radius.circular(2),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.lerp(
                                Alignment.centerLeft,
                                Alignment.centerRight,
                                volume,
                              ),
                              child: Container(
                                width: 13,
                                height: 13,
                                decoration: BoxDecoration(
                                  color: theme.scaffoldBackgroundColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: theme.disabledColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        CupertinoIcons.volume_up,
                        color: theme.disabledColor,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// Actions
          Container(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  CupertinoIcons.quote_bubble,
                  color: theme.disabledColor,
                  size: 18,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  CupertinoIcons.list_bullet,
                  color: theme.disabledColor,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
