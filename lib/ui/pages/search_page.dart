import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TitlesText(
          label: 'Поиск',
        ),
      ),
    );
  }
}
