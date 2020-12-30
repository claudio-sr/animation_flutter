import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  List<String> categories = [
    "Study",
    "Work",
    "Homework"
  ];

  int _category = 0;

  void categoryForward(){
    setState(() {
      _category++;
    });
  }

  void categoryBackward(){
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            disabledColor: Colors.white24,
            onPressed: _category > 0 ? categoryBackward : null,
        ),
        Text(categories[_category],
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          onPressed: _category < categories.length - 1 ?  categoryForward : null,
        ),
      ],
    );
  }
}
