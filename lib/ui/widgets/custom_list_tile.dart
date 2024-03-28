import 'package:fake_eccom/ui/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.txt,
    required this.iconPath,
    this.func,
  });

  final String txt;
  final IconData iconPath;
  final Function()? func;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        onTap: func,
        leading: Icon(iconPath),
        title: SubtitleText(label: txt),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
