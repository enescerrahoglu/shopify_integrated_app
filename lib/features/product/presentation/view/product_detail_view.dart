import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify_integrated_app/common/components/custom_button.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/presentation/widget/price_text_widget.dart';
import 'package:shopify_integrated_app/features/product/presentation/widget/safe_network_image.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class ProductDetailView extends StatelessWidget {
  final ProductDataDto product;

  const ProductDetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
    return Scaffold(
      appBar: AppBar(title: Text(product.title ?? ''), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  (product.images ?? []).isEmpty
                      ? AspectRatio(aspectRatio: 1, child: SafeNetworkImage(imageUrl: ''))
                      : CarouselSlider(
                          items: product.images
                              ?.map(
                                (e) => AspectRatio(aspectRatio: 1, child: SafeNetworkImage(imageUrl: e.originalSrc)),
                              )
                              .toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1,
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              currentIndex.value = index;
                            },
                          ),
                        ),
                  if ((product.images ?? []).isNotEmpty)
                    ValueListenableBuilder(
                      valueListenable: currentIndex,
                      builder: (context, value, child) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              product.images!.length,
                              (index) => Container(
                                width: 8,
                                height: 8,
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: value == index
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.outline,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if ((product.title ?? '').isNotEmpty)
                          Text(
                            product.title ?? '',
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        if ((product.description ?? '').isNotEmpty)
                          Text(
                            product.description ?? '',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: PriceText(
                      amount: product.price?.amount,
                      currencyCode: product.price?.currencyCode,
                      fontSize: 22,
                    ),
                  ),
                  CustomButton(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
                        Text(LocaleKeys.add_to_cart).tr(),
                      ],
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(LocaleKeys.added_to_cart.tr(), style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
