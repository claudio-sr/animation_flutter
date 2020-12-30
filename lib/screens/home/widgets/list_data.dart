import 'package:flutter/material.dart';

class ListData extends StatelessWidget {

  final String title;
  final String subTitle;
  final EdgeInsets margin;

  ListData({
    @required this.title,
    @required this.subTitle,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.black26, width: 1),
          bottom: BorderSide(color: Colors.black26, width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 5,),
                Text(subTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
