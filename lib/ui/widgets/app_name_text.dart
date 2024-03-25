import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameText extends StatelessWidget {
  final double fontSize;

  const AppNameText({
    super.key,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitlesText(
        label: "Fake eccom",
        fontSize: fontSize,
      ),
    );
  }
}
