import 'package:animation_flutter/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar flutter",
          subTitle: "Animações",
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar State",
          subTitle: "Animações",
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar State",
          subTitle: "Animações",
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar State",
          subTitle: "Animações",
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
