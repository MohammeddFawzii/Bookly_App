
import 'package:flutter/material.dart';

import 'details_item.dart';

class VisibilityDescription extends StatelessWidget {
  const VisibilityDescription({
    super.key,
    required this.showDescripton,
    required this.widget,
  });

  final bool showDescripton;
  final DetailsItem widget;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showDescripton,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: Text(
          widget.bookModel.description ?? "This Book Has No Description ",
          style: const TextStyle(color: Colors.cyan, fontSize: 22),
        ),
      ),
    );
  }
}
