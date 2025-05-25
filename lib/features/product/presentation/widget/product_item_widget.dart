import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopify_integrated_app/core/utils/router/routes.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/presentation/widget/price_text_widget.dart';
import 'package:shopify_integrated_app/features/product/presentation/widget/safe_network_image.dart';
import 'package:shopify_integrated_app/generated/locale_keys.g.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductDataDto? product;
  const ProductItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.productDetail.path, extra: product);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 0))],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: AspectRatio(
                aspectRatio: 1,
                child: SafeNetworkImage(
                  imageUrl: (product?.images ?? []).isEmpty ? '' : product?.images?.first.originalSrc ?? '',
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (product?.title ?? ''),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),

                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: PriceText(
                                  amount: product?.price?.amount,
                                  currencyCode: product?.price?.currencyCode,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(LocaleKeys.added_to_cart.tr(), style: TextStyle(color: Colors.white)),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.add, size: 20, color: Theme.of(context).colorScheme.onPrimary),
                            style: IconButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatPrice(String? amount, String? currencyCode) {
    if (amount == null || amount.isEmpty) return '';
    final double? parsed = double.tryParse(amount);
    if (parsed == null) return '';

    final String formatted = parsed.truncateToDouble() == parsed
        ? parsed.toInt().toString()
        : parsed.toStringAsFixed(2);

    return '$formatted $currencyCode';
  }
}
