import 'package:flutter/material.dart';

import '../view/search_view.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return const SearchPage();
          }),
        );
      },
      icon: const Icon(Icons.search),
    );
  }
}
