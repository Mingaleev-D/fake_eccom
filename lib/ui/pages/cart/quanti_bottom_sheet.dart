import 'package:fake_eccom/ui/widgets/subtitle_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuantiBottomSheet extends StatelessWidget {
  const QuantiBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print('$index');
                },
                child: Align(
                    alignment: Alignment.center,
                    child: SubtitleText(label: '$index')),
              );
            },
          ),
        ),
      ],
    );
  }
}
