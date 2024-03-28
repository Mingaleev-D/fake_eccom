import 'package:fake_eccom/ui/widgets/subtitle_text.dart';
import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              Image.asset(
                'assets/shop_ic.png',
                height: sizeMQ.height * 0.35,
                width: sizeMQ.width * 0.9,
              ),
              const SizedBox(height: 25),
              TitlesText(
                label: 'Упс, пусто...',
                color: Theme.of(context).colorScheme.error,
                fontSize: 40,
              ),
              const SizedBox(height: 25),
              const SubtitleText(
                label: 'Добавьте что-нибудь в корзину',
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Добавить в корзину'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
