import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final bool isLoading;
  final bool enabled;
  final Color? color;
  final BorderRadius? borderRadius;
  final bool hasBackgroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.child,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
    this.color,
    this.borderRadius,
    this.hasBackgroundColor = true,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      disabledColor: (isLoading && enabled)
          ? color ?? (hasBackgroundColor ? Theme.of(context).colorScheme.primary : CupertinoColors.quaternarySystemFill)
          : CupertinoColors.quaternarySystemFill,
      padding: padding,
      color: color ?? (hasBackgroundColor ? Theme.of(context).colorScheme.primary : null),
      onPressed: isLoading
          ? null
          : enabled
          ? onPressed
          : null,
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: DefaultTextStyle(
        style:
            textStyle ??
            TextStyle(
              color: hasBackgroundColor ? Colors.white : Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
        child: isLoading
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Visibility(
                    visible: false,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: child,
                  ),
                  CupertinoActivityIndicator(color: hasBackgroundColor ? Colors.white : null),
                ],
              )
            : child,
      ),
    );
  }
}
