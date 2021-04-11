import 'package:flutter/material.dart';

class PosterPager extends StatelessWidget {
  const PosterPager({Key key}) : super(key: key);

  static final _images = [
    AssetImage('assets/images/img_00.jpg'),
    AssetImage('assets/images/img_01.jpg'),
    AssetImage('assets/images/img_02.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final media = MediaQuery.of(context);

    return Container(
      height: 260,
      child: ListView.builder(
        controller: PageController(initialPage: 1),
        physics: PageScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: (media.size.width - 680.0) / 2,
        ),
        scrollDirection: Axis.horizontal,
        itemExtent: 680,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 2.5,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.dividerColor,
                width: 1,
              ),
            ),
            child: Image(
              image: _images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
