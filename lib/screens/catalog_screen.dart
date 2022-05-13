import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/widgets.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Catalogo de Produtos'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60)),
              onPressed: () => Get.to(() => const CartScreen(),
                  transition: Transition.cupertino),
              child: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(
              height: 20,
            ),

          ],

        ),
      ),
    );
  }
}
