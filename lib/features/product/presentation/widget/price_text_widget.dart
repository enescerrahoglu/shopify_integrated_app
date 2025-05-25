import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String? amount;
  final String? currencyCode;
  final double? fontSize;

  const PriceText({super.key, required this.amount, required this.currencyCode, this.fontSize});

  @override
  Widget build(BuildContext context) {
    if (amount == null || amount!.isEmpty) return const SizedBox.shrink();
    final double? parsed = double.tryParse(amount!);
    if (parsed == null) return const SizedBox.shrink();

    final String formatted = parsed.truncateToDouble() == parsed
        ? parsed.toInt().toString()
        : parsed.toStringAsFixed(2);

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: formatted,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              fontSize: fontSize,
            ),
          ),
          const TextSpan(text: ''),
          TextSpan(
            text: currencyCode ?? '',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
