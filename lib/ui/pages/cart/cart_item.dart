import 'package:fake_eccom/ui/pages/cart/quanti_bottom_sheet.dart';
import 'package:fake_eccom/ui/widgets/subtitle_text.dart';
import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  static const String imageUrlPlaceholder = 'https://i.imgur.com/ZANVnHE.jpeg';

  // 'https://pigments.shop/image/cache/no_image-auto_width_800.png';

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FancyShimmerImage(
              imageUrl: imageUrlPlaceholder,
              height: sizeMQ.height * 0.18,
              width: sizeMQ.width * 0.3,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitlesText(label: 'Title' * 10, maxLines: 2),
                const SizedBox(width: 30),
                const SubtitleText(label: '100.00 \₽', fontSize: 20),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete,
                      color: Theme.of(context).colorScheme.error)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined,
                      color: Theme.of(context).colorScheme.error)),
              OutlinedButton.icon(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return QuantiBottomSheet();
                    },
                  );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                ),
                icon: const Icon(Icons.arrow_drop_down),
                label: const Text('6'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
