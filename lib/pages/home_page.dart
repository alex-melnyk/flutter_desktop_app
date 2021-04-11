import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SidebarScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Toolbar(),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PosterPager(),
                    Container(
                      height: 500,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    width: 1,
                                    color: theme.dividerColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 284,
                            color: theme.scaffoldBackgroundColor,
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 35,
                                horizontal: 25,
                              ),
                              // color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Music',
                                        style: TextStyle(
                                          fontFamily: 'Helvetica Neue',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                        ),
                                        child: Icon(
                                          CupertinoIcons.chevron_down,
                                          size: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'All Genres',
                                        style: TextStyle(
                                          height: 2.0,
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 5,
                                        ),
                                        child: Icon(
                                          CupertinoIcons.chevron_down,
                                          size: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Text(
                                      'MUSIC QUICK LINKS',
                                      style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Wrap(
                                      runSpacing: 10.0,
                                      children: [
                                        FractionallySizedBox(
                                          widthFactor: 0.5,
                                          child: Text(
                                            'Account',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 0.5,
                                          child: Text(
                                            'Redeem',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 0.5,
                                          child: Text(
                                            'Send Gift',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 0.5,
                                          child: Text(
                                            'Support',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Wrap(
                                      runSpacing: 10.0,
                                      children: [
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Apple Music 1',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'iTunes Match',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Mastered for iTunes',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Purchased',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Complete My Album',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Pre-Order New Music',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'My Wish List',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'Recommended for you',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          widthFactor: 1,
                                          child: Text(
                                            'About Personalisation',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: theme.hintColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
