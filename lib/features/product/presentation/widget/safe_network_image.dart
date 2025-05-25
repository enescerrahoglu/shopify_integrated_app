import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopify_integrated_app/core/presentation/app_images.dart';

class SafeNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final String placeholderAsset;

  const SafeNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.borderRadius,
    this.placeholderAsset = AppImages.noImage,
  });

  bool get _isValidUrl => imageUrl != null && (imageUrl ?? '').isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final imageWidget = _isValidUrl
        ? CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: fit,
            width: width,
            height: height,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.image_not_supported_rounded, size: 50, color: Colors.grey),
          )
        : Icon(Icons.image_not_supported_rounded, size: 50, color: Colors.grey);

    if (borderRadius != null) {
      return ClipRRect(borderRadius: borderRadius ?? BorderRadius.circular(0), child: imageWidget);
    }

    return imageWidget;
  }
}
