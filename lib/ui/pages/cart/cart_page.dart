import 'package:fake_eccom/ui/pages/cart/cart_bottom_checkout.dart';
import 'package:fake_eccom/ui/pages/cart/cart_item.dart';
import 'package:fake_eccom/ui/widgets/empty_bag.dart';
import 'package:fake_eccom/ui/widgets/titles_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  final bool isEmptyBag = false;

  @override
  Widget build(BuildContext context) {
    return isEmptyBag
        ? const EmptyBag()
        : Scaffold(
            appBar: AppBar(
              title: const TitlesText(
                label: 'Корзина (5)',
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CircleAvatar(
                    radius: 20,
                    child: Image.asset('assets/shop_ic.png',
                        width: 40, height: 40)),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.delete,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return const CartItem();
                  },
                ),
              ),
            ),
            bottomSheet: const CartBottomCheckout(),
          );
  }
}
