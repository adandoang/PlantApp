import 'package:flutter/material.dart';

import 'package:plantapp/screens/home/components/header_with_searchbox.dart';
import 'package:plantapp/screens/home/components/recomend_plants.dart';
import 'package:plantapp/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
        ],
      ),
    );
  }
}